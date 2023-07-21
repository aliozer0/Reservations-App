import 'package:flutter/material.dart';

import 'Reservation/reservationModal.dart';

class ResNewScreen extends StatefulWidget {
  ResNewScreen({
    super.key,
    required this.item,
  });
  ReservationModel? item;

  @override
  State<ResNewScreen> createState() => _ResNewScreenState();
}

//color:Color(0xffD6E8DB);
//color:Color(0xffA4907C);
//color:Color(0xff);

class _ResNewScreenState extends State<ResNewScreen> {
  void _openNewScreen(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            child: Container(
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(top: 50),
                    width: MediaQuery.of(context).size.width,
                    color: Colors.teal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.item?.guestnames ?? '-',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.03),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: Colors.green),
                              child: IconButton(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(2),
                                icon: Icon(Icons.call),
                                onPressed: () {},
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey),
                              child: IconButton(
                                icon: Icon(
                                  Icons.alternate_email,
                                  size: 30,
                                ),
                                onPressed: () {},
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Misafirler",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        IconButton(
                          alignment: Alignment.topRight,
                          color: Colors.red,
                          icon: Icon(
                            Icons.cancel,
                            size: 40,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 15, left: 5, right: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      width: size.width,
      child: Container(
          child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              border: Border.all(color: Colors.black12),
              color: Color(0xffDDF7E3),
            ),
            width: size.width,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(size.width * 0.02),
            child: Container(
                width: size.width - size.width * 0.08,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      //padding: EdgeInsets.only(right: 100),
                      width: (size.width - (size.width * 0.08)) / 2,

                      child: Text(
                        widget.item?.guestnames ?? '-',
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w400),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    Container(
                      width: (size.width - (size.width * 0.08)) / 2,
                      child: Text(
                        widget.item?.nationality ?? '-',
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w400),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.end,
                        maxLines: 3,
                      ),
                    )
                  ],
                )),
          ),
          Container(
            padding: EdgeInsets.all(size.width * 0.02),
            decoration: BoxDecoration(
              color: Color(0xffC7E8CA),
              border: Border.all(color: Colors.black12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.mode_night,
                        size: 25,
                      ),
                      Text(
                        "${widget.item!.night ?? '-'} Nights",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.home),
                      Text(
                        "${widget.item?.roomtype?.toUpperCase() ?? '-'} / ${widget.item?.roomno ?? '-'}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(size.width * 0.02),
            width: size.width,
            decoration: BoxDecoration(
              color: Color(0xffBEF0CB),
              border: Border.all(color: Colors.black12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Total: ${widget.item?.totalprice}",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width * 0.4,
                ),
                Container(
                  child: Text(
                    "${widget.item?.agency ?? '-'}",
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            //
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              border: Border.all(
                color: Colors.black12,
              ),
              color: Color(0xffC7E8CA),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(20)),
                  ),
                  child: Text(
                      "${widget.item!.checkindate!.day}.${widget.item!.checkindate!.month}.${widget.item!.checkindate!.year} ",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                GestureDetector(
                  onTap: () {
                    _openNewScreen(context);
                  },
                  child: Container(
                    height: size.height * 0.06,
                    width: size.width * 0.3,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "${widget.item?.adult ?? '-'}",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        widget.item?.adult == 1
                            ? Icon(Icons.account_circle_sharp)
                            : const Icon(Icons.people_outline_rounded),
                        const Text("2",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(Icons.child_care_sharp),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(20)),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                      "${widget.item!.checkoutdate!.day}.${widget.item!.checkoutdate!.month}.${widget.item!.checkoutdate!.year}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
