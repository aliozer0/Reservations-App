import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:resv/Reservation/reservationModal.dart';
import 'package:rxdart/rxdart.dart';

class ReservationServis {
  ReservationModel? item;
  final BehaviorSubject<List<ReservationModel>?> reservationList$ =
      BehaviorSubject.seeded(null);
  final BehaviorSubject<List<ReservationGuestModel>?> reservationGuestList$ =
      BehaviorSubject.seeded(null);

  void getReservations() async {
    String url = 'https://4001.hoteladvisor.net/Select/QA_HOTEL_RESERVATION';
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          "Action": "Select",
          "Object": "QA_HOTEL_RESERVATION",
          "Select": ["*"],
          "Where": [
            {"Column": "HOTELID", "Operator": "=", "Value": 24204}
          ],
          "Paging": {"Current": 1, "ItemsPerPage": 100},
          "LoginToken":
              "0f4dfeeb4ff4e39948b90b8ec3ee8f02b1b24585f4481e64e8e7973b3a6686ff5ba7704e5563d11492eabcd2002990ec1bedd6c15836b53a97a78b7243584a9fe30458145eed3c292bf96198ceeb811005113f3d5eb6d2b236f1856d51fab367708135ed05c16e754684c8787dda461d69a6284077f766f097caa988272b263ef7b8220047a193a216256b988c68281e7d3ba4091de40f54542e13cad2a7aaf91986356ac501314456786cbd6148ac6fa524dbeadd2d29b1dce5557a187b3c1ab517781cb7af16fd5bfbefea68008e8e0b2024a0d717b5882532c40098aae3988b6cfad28baf424f9a025366279ff0d1"
        }),
      );
      if (response.statusCode == 200) {
        print(" Istek başarılı ");

        var resultJson = jsonDecode(utf8.decode(response.bodyBytes));
        resultJson['ResultSets'][0].forEach((item) {
          if (reservationList$.value == null) {
            reservationList$.value = [];
            reservationList$.value!.add(ReservationModel.fromJson(item));
          } else {
            reservationList$.value!.add(ReservationModel.fromJson(item));
          }
        });
        reservationList$.add(reservationList$.value);
      } else {
        throw Exception('Sunucudan veri alınamadı.');
      }
    } catch (e) {
      print("hataa");
      reservationList$.addError('Hata: $e');
    }
  }

  Future<bool> getReservationDetailRequest(int resId) async {
    String url = 'https://4001.hoteladvisor.net/QA_RES_HOTELlist';

    try {
      reservationGuestList$.add(null);
      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'applications/json',
        },
        body: json.encode({
          "Action": "Select",
          "Object": "RES_NAME",
          "Select": ["*"],
          "Where": [
            {"Column": "ISDELETED", "Operator": "=", "Value": 0, "IsNull": 0},
            {"Column": "ISDISABLED", "Operator": "=", "Value": 0, "IsNull": 0},
            {"Column": "RESID", "Operator": "=", "Value": resId},
            {"Column": "HOTELID", "Operator": "=", "Value": 24204}
          ],
          "OrderBy": [
            {"Column": "SORTORDER", "Direction": "ASC"}
          ],
          "Paging": {"Current": 1, "ItemsPerPage": 1},
          "Joins": [
            {
              "Object": "COUNTRY",
              "Key": "ID",
              "Fields": ["NAME"],
              "Field": "NATIONALITYID"
            },
            {
              "Object": "HOTEL_GUEST",
              "Key": "ID",
              "Fields": ["NAME_ID_BIRTH", "BLACKLIST"],
              "Field": "GUESTID"
            },
            {
              "Object": "GUEST_TITLE",
              "Key": "ID",
              "Fields": ["TITLE"],
              "Field": "TITLEID"
            }
          ],
          "LoginToken":
              "0f4dfeeb4ff4e39948b90b8ec3ee8f02b1b24585f4481e64e8e7973b3a6686ff5ba7704e5563d11492eabcd2002990ec1bedd6c15836b53a97a78b7243584a9fe30458145eed3c292bf96198ceeb811005113f3d5eb6d2b236f1856d51fab367708135ed05c16e754684c8787dda461d69a6284077f766f097caa988272b263ef7b8220047a193a216256b988c68281e7d3ba4091de40f54542e13cad2a7aaf91986356ac501314456786cbd6148ac6fa524dbeadd2d29b1dce5557a187b3c1ab517781cb7af16fd5bfbefea68008e8e0b2024a0d717b5882532c40098aae3988b6cfad28baf424f9a025366279ff0d1"
        }),
      );
      if (response.statusCode == 200) {
        print(" Guest Istek başarılı ");
        var resultJson = jsonDecode(utf8.decode(response.bodyBytes));
        resultJson['ResultSets'][0].forEach((item) {
          reservationGuestList$.value = [];
          reservationGuestList$.value!
              .add(ReservationGuestModel.fromJson(item));
        });
        reservationGuestList$.add(reservationGuestList$.value);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print("hataa");
      reservationGuestList$.addError('Hata: $e');
      return false;
    }
  }
}
