import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:resv/Reservation/reservationModal.dart';
import 'package:rxdart/rxdart.dart';

class ReservationServis {
  final BehaviorSubject<List<ReservationModel>> postResultSubject =
      BehaviorSubject<List<ReservationModel>>.seeded([]);

  void sendPostRequest() async {
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
              "f1f85db0646a080c7266e6f4f8cc2803d9f5bed98844301ef5afbecdf593820643f61eb511acd2a065bf092e03b8fcd394615c6331eef341334640c870b80b78c3d02dd36e0a0107a850dd334df5a5f59e8219319e2940f0c5fed231a28357199ef02719aa4f0e461c7ff8cb63726a5638f56e0c67d188d48217df7732743467c89f702c022a3bcf20544f5c7edfc47a5f9a706f9d3cab06ab3b4c4bc8d19cb78d7b39f11fd8446273cf23cafead5698636fff9d18c3a368a987a0c00fd30e216e96982d8c13e876cdabb7171a93352fa483babb209f9392add12de3b12927e0638b84f40c3e7c154f67ec8537cb0f47"
        }),
      );
      if (response.statusCode == 200) {
        print(" Istek başarılı ");

        // 1- resultSet data almak bodydan
        // 2- forEach kullanarak ReservationModel.fromJson'le objects hazirlamak
        // 3- BehaviorSubject icin add yapmak

        var resultJson = jsonDecode(utf8.decode(response.bodyBytes));
        resultJson['ResultSets'][0].forEach((item) {
          postResultSubject.value.add(ReservationModel.fromJson(item));
        });
        postResultSubject.add(postResultSubject.value);
      } else {
        throw Exception('Sunucudan veri alınamadı.');
      }
    } catch (e) {
      print("hataa");
      postResultSubject.addError('Hata: $e');
    }
  }
}
