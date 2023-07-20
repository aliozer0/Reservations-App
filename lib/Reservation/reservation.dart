import 'package:flutter/material.dart';
import 'package:resv/widget/DropDownMenu.dart';
import 'package:rxdart/subjects.dart';
import '../global/reservatıon_lıst_json.dart';
import '../widget/DropDownMenu.dart';
import '../widget/Resevation_cart.dart';
import 'reservationModal.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({Key? key}) : super(key: key);

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  BehaviorSubject<List<ReservationModel>> _listBehaviorSubject$ = BehaviorSubject.seeded([]);

  getReservationsList() {
    List<ReservationModel> tempList = [];
    temp_reservations.forEach((element) {
      // _listBehaviorSubject$.value.add(ReservationModel.fromJson(element));
      tempList.add(ReservationModel.fromJson(element));
    });
    //_listBehaviorSubject$.add(_listBehaviorSubject$.value);
    _listBehaviorSubject$.add(tempList);
  }

  @override
  void initState() {
    super.initState();
    getReservationsList();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Reservation List'),
          backgroundColor: const Color.fromARGB(255, 63, 17, 177),
          foregroundColor: Colors.white,
        ),
        body: StreamBuilder(
          stream: _listBehaviorSubject$.stream,
          builder: (context, snapshot) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return ReservationCard(item: _listBehaviorSubject$.value[index],);},
              itemCount: _listBehaviorSubject$.value.length,
            );
          }
        ));
  }
}
