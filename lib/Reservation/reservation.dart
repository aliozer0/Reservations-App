import 'package:flutter/material.dart';
import 'package:resv/Reservation/ReservationServic.dart';
import 'package:resv/resnewscreen.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({Key? key}) : super(key: key);

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  final service = ReservationServis();

  // final BehaviorSubject<List<ReservationModel>> _resSubject =
  //     BehaviorSubject<List<ReservationModel>>();
  // Stream<List<ReservationModel>> get ListStream => _resSubject.stream;

  @override
  void initState() {
    super.initState();
    service.sendPostRequest();

    // getReservationsList();
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
            stream: service.postResultSubject.stream,
            builder: (context, snapshot) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return ResNewScreen(
                    item: service.postResultSubject.value[index],
                  );
                },
                itemCount: service.postResultSubject.value.length,
              );
            }));
  }
}
