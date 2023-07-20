import 'package:flutter/material.dart';
import 'package:resv/widget/DropDownMenu.dart';
import '../widget/DropDownMenu.dart';
import '../widget/Resevation_cart.dart';

class ReservationScreen extends StatelessWidget {
  ReservationScreen({super.key});
  final List<String> ReservationList = [
    'Öğe 1',
    'Öğe 2',
    'Öğe 3',

  ];


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Reservation List'),
          backgroundColor: const Color.fromARGB(255, 63, 17, 177),
          foregroundColor: Colors.white,
        ),
      body:  ListView.builder(
        itemBuilder: (context,index) {return ReservationCard();}
           , itemCount: 10,
      )

        );
  }
}
