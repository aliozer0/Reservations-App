import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resv/Reservation/reservationModal.dart';
import 'package:resv/global/reservat%C4%B1on_l%C4%B1st_json.dart';

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
      child: Container(
        color: Colors.lightBlueAccent,
        height: MediaQuery.of(context).size.height*0.45,
        width: double.infinity,

        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround
              ,
              children: [
                Container(

                  child:Row(
                    children: [
                          Text('Room' , style: TextStyle(fontSize: 25, color: Colors.deepPurpleAccent,backgroundColor: Colors.black)),
                      SizedBox(width: 2,),
                      Text('101')
                    ],
                  ),
                ),
                Container(
                 child: Column(
                   children: [
                     Text(
                       'July / 09',style: TextStyle(fontSize: 25, color: Colors.deepPurpleAccent,backgroundColor: Colors.black)
                     ),
                     Text(
                       'July / 12',style: TextStyle(fontSize: 25, color: Colors.deepPurpleAccent,backgroundColor: Colors.black)
                     )
                   ],
                 ),
                ),

              ],
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

              ],
            )
          ],
        ),
      ),
    );
  }
}

