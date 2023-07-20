import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resv/Reservation/reservationModal.dart';


class ReservationCard extends StatefulWidget {
  ReservationModel item;
   ReservationCard({super.key,required this.item});

  @override
  State<ReservationCard> createState() => _ReservationCardState();
}

class _ReservationCardState extends State<ReservationCard> {

  @override
  Widget build(BuildContext context,) {


    return Center(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [

          Container(
            color: Colors.cyan,
            height: 450,
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                        ),
                      ),
                      child: const Text(
                        "2023/04/20 14.00",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.forward,
                      size: 25,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: Colors.red,
                          width: 2,
                        ),
                      ),
                      child: const Text(
                        "2023/04/22 23.00",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Divider(
                      color: Colors.black,
                    ),
                     Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            widget.item.guestnames ?? '-',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: IntrinsicHeight(
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "ONLINE",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              width: 170,
                            ),
                            const VerticalDivider(
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              "TUR",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Container(
                        padding: const EdgeInsets.all(10),
                        child: IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Row(
                                children: [
                                  Text("1", style: TextStyle(fontSize: 20)),
                                  Icon(
                                    Icons.people,
                                    size: 30,
                                  ),
                                ],
                              ),
                              const VerticalDivider(
                                color: Colors.black,
                              ),
                              const Row(
                                children: [
                                  Text("2", style: TextStyle(fontSize: 20)),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text("Gece",
                                      style: TextStyle(fontSize: 20)),
                                ],
                              ),
                              VerticalDivider(
                                color: Colors.black,
                              ),
                              Container(
                                child: const Text('STD',
                                    style: TextStyle(fontSize: 20)),
                              )
                            ],
                          ),
                        )),
                    const Divider(
                      color: Colors.black,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Container(
                              child: const Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Ort. Gece Fiyatı",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  Text(":", style: TextStyle(fontSize: 20)),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text("281.25 TRY",
                                      style: TextStyle(fontSize: 20))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: const Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                              children: [
                                Text("Toplam Fiyat",
                                    style: TextStyle(fontSize: 20)),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(":", style: TextStyle(fontSize: 20)),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "562.5 TRY",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: PopupMenuButton<String>(
                        itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                          PopupMenuItem<String>(
                              value: 'Name',
                              child: Container(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(widget.item.guestnames ?? ''),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                            BorderRadius.circular(50)),
                                        child: Icon(
                                          Icons.call,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      )
                                    ],
                                  ))),
                          PopupMenuItem<String>(
                            value: 'notification',
                            child: Container(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(widget.item.nationality),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                        BorderRadius.circular(50),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        '@',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                        child: Container(
                          padding: EdgeInsets.all(16),
                          color: Colors.grey[300],
                          child: Container(
                              width: double.infinity,
                              height: 30,
                              child: Text('Misafirler',
                                  style: TextStyle(fontSize: 20))),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
      Positioned(
        height: 50,
        child: Container(
            padding: EdgeInsets.all(10),
            foregroundDecoration: BoxDecoration(
              border: Border.all(
                color: Colors.black38,
                width: 2,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Room',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  widget.item.roomno ?? '',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            color: Colors.white),
      ),
        ],
      ),
    );
  }
}

