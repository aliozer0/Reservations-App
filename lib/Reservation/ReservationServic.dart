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
              "38dbb28a993bbfb9dd5ae319f338a5729340396dfe9554d3ebe84a8f40bd2f9de5063963b7143d82224f8915f5981f325ff704f03d89c840fe04e32ac4f404f0c42aa803c340ec250f6db6de103fcb5852ebb48b2b629410b5aa31633bace704e3f79505982d8b340d19f9df0ba611204d9caf04a2229de4d58dde155240243efb0f3c46f747511e5e3686eccd09aaa2bd52434fac78a0426f005789187a86d9f0a4a5435d6eeea5571e9d369e9997f62ee1dc68292915d3d8dfc1b8cfa81c2fbb1b289064e9834076a9c66e2623ce2abd6797f7bd562e25b2b118659275195df6f57bc566b4897848d60895e657ab08"
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
              "38dbb28a993bbfb9dd5ae319f338a5729340396dfe9554d3ebe84a8f40bd2f9de5063963b7143d82224f8915f5981f325ff704f03d89c840fe04e32ac4f404f0c42aa803c340ec250f6db6de103fcb5852ebb48b2b629410b5aa31633bace704e3f79505982d8b340d19f9df0ba611204d9caf04a2229de4d58dde155240243efb0f3c46f747511e5e3686eccd09aaa2bd52434fac78a0426f005789187a86d9f0a4a5435d6eeea5571e9d369e9997f62ee1dc68292915d3d8dfc1b8cfa81c2fbb1b289064e9834076a9c66e2623ce2abd6797f7bd562e25b2b118659275195df6f57bc566b4897848d60895e657ab08"
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
