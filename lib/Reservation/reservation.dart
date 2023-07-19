import 'package:flutter/material.dart';
import 'package:resv/widget/DropDownMenu.dart';
import '../widget/DropDownMenu.dart';
import '../widget/Resevation_cart.dart';

class ReservationScreen extends StatelessWidget {
  ReservationScreen({super.key});
  final List<String> rooms = <String>['Room 1', 'Room 2', 'Room 3'];
  void _selectedRooms = 'Room1';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Reservation List'),
          backgroundColor: const Color.fromARGB(255, 63, 17, 177),
          foregroundColor: Colors.white,
        ),
        body: ReservationCard());
  }
}
