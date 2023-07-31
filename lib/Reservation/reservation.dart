import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resv/Reservation/ReservationServic.dart';
import 'package:resv/resnewscreen.dart';
import 'package:rxdart/rxdart.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({Key? key}) : super(key: key);

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  BehaviorSubject<bool> _widgetToggleController =
      BehaviorSubject<bool>.seeded(false);

  final service = ReservationServis();
  DateTime dateTime = DateTime(2022, 12, 24);
  late DateTime checkInDate;
  late DateTime checkOutDate;

  BehaviorSubject<bool> _isOpenSubject = BehaviorSubject<bool>.seeded(false);

  @override
  void initState() {
    super.initState();
    service.getReservations();
  }

  bool isButtonPressed = false;
  void _toggleButton() {
    setState(() {
      isButtonPressed = !isButtonPressed;
      _isOpenSubject.add(!_isOpenSubject.value);
    });
  }

  DateTimeRange dateRange = DateTimeRange(
    start: DateTime(2023, 11, 05),
    end: DateTime(2023, 11, 05),
  );

  @override
  Widget build(
    BuildContext context,
  ) {
    String searchText = '';
    final start = dateRange.start;
    final end = dateRange.end;
    TextEditingController _searchTextController = TextEditingController();

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Reservation List'),
        backgroundColor: Color(0xff1D5D9B),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              return _toggleButton();
            },
            icon: const Icon(
              Icons.filter_alt_outlined,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          if (isButtonPressed == true)
            Container(
              height: size.height * 0.16,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(2),
                    child: Column(
                      children: [
                        TextField(
                          controller: _searchTextController,
                          style: TextStyle(fontSize: 18.0, color: Colors.black),
                          decoration: InputDecoration(
                            labelText: 'Search...',
                            labelStyle:
                                TextStyle(fontSize: 25.0, color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2.0),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          width: size.width / 3,
                          child: ElevatedButton(
                            onPressed: pickDateRange,
                            child: Text(
                                "${start.day}.${start.month}.${start.year}"),
                          )),
                      IconButton(
                          onPressed: pickDateRange,
                          icon: Icon(Icons.calendar_month_outlined)),
                      Container(
                        width: size.width / 3,
                        child: ElevatedButton(
                            onPressed: pickDateRange,
                            child: Text("${end.day}.${end.month}.${end.year}")),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          Expanded(
            child: StreamBuilder(
                stream: service.reservationList$.stream,
                builder: (context, snapshot) {
                  if (service.reservationList$.value == null) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.red,
                      ),
                    );
                  } else if (service.reservationList$.value!.isEmpty) {
                    return const Text("Reservation Listesi boş");
                  } else {
                    return Container(
                      color: Color(0xffDDDDDD),
                      child: ListView.builder(
                        itemCount: service.reservationList$.value!.length,
                        itemBuilder: (
                          context,
                          index,
                        ) {
                          return ResNewScreen(
                            item: service.reservationList$.value![index],
                            // items: service.reservationGuestList$.value![index],
                          );
                        },
                      ),
                    );
                  }
                }),
          ),

          // Container(
          //   height: size.height * 0.15,
          //   color: Colors.lightBlue,
          //   child: Column(
          //     children: [
          //       Container(
          //         padding: EdgeInsets.all(4),
          //         margin: EdgeInsets.all(4),
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             TextField(
          //               controller: _searchTextController,
          //               style: TextStyle(fontSize: 18.0, color: Colors.black),
          //               decoration: InputDecoration(
          //                 labelText: 'Search...',
          //                 labelStyle:
          //                     TextStyle(fontSize: 25.0, color: Colors.black),
          //                 border: OutlineInputBorder(
          //                   borderRadius: BorderRadius.circular(8.0),
          //                 ),
          //                 focusedBorder: OutlineInputBorder(
          //                   borderSide:
          //                       BorderSide(color: Colors.blue, width: 2.0),
          //                   borderRadius: BorderRadius.circular(8.0),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceAround,
          //         children: [
          //           Container(
          //               width: size.width / 3,
          //               child: ElevatedButton(
          //                 onPressed: pickDateRange,
          //                 child:
          //                     Text("${start.day}.${start.month}.${start.year}"),
          //               )),
          //           Container(
          //             width: size.width / 3,
          //             child: ElevatedButton(
          //                 onPressed: pickDateRange,
          //                 child: Text("${end.day}.${end.month}.${end.year}")),
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }

  Future pickDateRange() async {
    DateTimeRange? newDateRange = await showDateRangePicker(
        context: context,
        firstDate: DateTime(2000),
        lastDate: DateTime(2050),
        initialDateRange: dateRange);

    if (newDateRange == null) return; // x e basarsak
    setState(() => dateRange = newDateRange);
  }
}
