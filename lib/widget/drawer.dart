// import 'package:flutter/material.dart';
// import 'package:resv/widget/DropDownMenu.dart';
// import '../widget/DropDownMenu.dart';

// class ReservationScreen extends StatelessWidget {
//   ReservationScreen({super.key});
//   final List<String> rooms = <String>['Room 1', 'Room 2', 'Room 3'];
//   void _selectedRooms = 'Room1';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Reservation List'),
//         backgroundColor: const Color.fromARGB(255, 63, 17, 177),
//         foregroundColor: Colors.white,
//       ),
//       body: Container(
//         height: 50,
//         width: double.infinity,
//         margin: EdgeInsets.all(10),
//         color: Color.fromARGB(255, 150, 244, 36),
//         child: Container(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               Container(
//                 width: 200,
//                 child: DropDownMenus(),
//               ),
//               TextField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Search',
//                 ),
//                 onChanged: (p) {
//                   print('search');
//                 },
//               ),
//               IconButton(
//                 onPressed: null,
//                 icon: Icon(
//                   Icons.search,
//                   size: 30,
//                   color: Colors.black,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

