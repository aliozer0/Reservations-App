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
              "6ac85eea034fab1cb1eb5b618703cc8454f84b3ff5b8647e4b40d99ffb2f130fc47a8e21a4726a822f0d07be39131b552ec027e41d5ed8af6bf290b72f7abbc521643276632680325bf1c46fc9605ee081535a0dfdd8be55eccfddbdd6e61e6674aff987d44f0fc552d16d366589769226f242658563389269e4d6e3b7b2168a9e616bdda7b9385a9e0cf3c88086e2e52c3280692722d83388503e9969314fe206786ccc1ebe7e5fd44964aa849057be1ce8dbaf667295fd489db6e9568c47d9e4ca79a7da9734a7f483108c25e150f6ac630383abf8e24faec0c08e5cfc72214deb23a01e70e019460cf0b48d6dde33"
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
              "6ac85eea034fab1cb1eb5b618703cc8454f84b3ff5b8647e4b40d99ffb2f130fc47a8e21a4726a822f0d07be39131b552ec027e41d5ed8af6bf290b72f7abbc521643276632680325bf1c46fc9605ee081535a0dfdd8be55eccfddbdd6e61e6674aff987d44f0fc552d16d366589769226f242658563389269e4d6e3b7b2168a9e616bdda7b9385a9e0cf3c88086e2e52c3280692722d83388503e9969314fe206786ccc1ebe7e5fd44964aa849057be1ce8dbaf667295fd489db6e9568c47d9e4ca79a7da9734a7f483108c25e150f6ac630383abf8e24faec0c08e5cfc72214deb23a01e70e019460cf0b48d6dde33"
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
