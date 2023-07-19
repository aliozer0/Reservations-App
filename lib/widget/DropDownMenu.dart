import 'package:flutter/material.dart';
import 'package:resv/Reservation/reservationModal.dart';
import 'package:rxdart/subjects.dart';

class DropDownMenus extends StatelessWidget {
  final List<String> rooms = ["Room1", "Room2"];

  BehaviorSubject<String> selectedRooms$ = BehaviorSubject.seeded('Room1');

  @override
  Widget build(BuildContext context) {
    ReservationModel();
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          stream: selectedRooms$.stream,
          builder: (context, snapshot) {
            return DropdownButton<String>(
              value: selectedRooms$.value,
              onChanged: (v) {
                selectedRooms$.add(v!);
              },
              items: rooms.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
