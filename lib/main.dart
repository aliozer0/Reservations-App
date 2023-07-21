import 'package:flutter/material.dart';
import 'package:resv/Reservation/reservation.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reservations',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 63, 17, 177)),
        useMaterial3: true,
      ),
      home: ReservationScreen(),
    );
  }
}
