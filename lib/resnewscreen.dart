import 'package:flutter/material.dart';

import 'Reservation/ReservationServic.dart';
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

class _ResNewScreenState extends State<ResNewScreen> {
  final services = ReservationServis();
  void openNewScreen(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            contentPadding: EdgeInsets.all(10),
            insetPadding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            title: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Misafirler"),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.cancel,
                        size: 40,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
            content: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.9,
              child: StreamBuilder(
                  stream: services.reservationGuestList$.stream,
                  builder: (context, snapshot) {
                    if (services.reservationGuestList$.value == null) {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Colors.blue,
                        ),
                      );
                    } else if (services.reservationGuestList$.value!.isEmpty) {
                      return const Text("Reservation Listesi boş");
                    } else {
                      return ListView.builder(
                        itemCount: services.reservationGuestList$.value!.length,
                        itemBuilder: (context, index) {
                          var guest =
                              services.reservationGuestList$.value![index];
                          return ListTile(
                            title: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black26),
                                  borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.deepPurple,
                                      offset: Offset(0.0, -2.0),
                                      blurRadius: 2.0,
                                      spreadRadius: 2.0,
                                    )
                                  ]),
                              child: Column(
                                children: [
                                  Container(
                                    color: Color(0xffFFAF3F0),
                                    padding: EdgeInsets.all(5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          " ${guest.name ?? '-'}  ${guest.lname ?? '-'}",
                                          style: const TextStyle(
                                            fontSize: 20,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 3,
                                        ),
                                        Row(
                                          children: [
                                            InkWell(
                                              onTap: () {},
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                ),
                                                padding: EdgeInsets.all(4),
                                                child: const Icon(
                                                  Icons.add_call,
                                                  size: 25,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                ),
                                                padding: EdgeInsets.all(4),
                                                child: const Icon(
                                                  Icons.attach_file_sharp,
                                                  size: 25,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                      height: 1, color: Color(0xff1859FFFF)),
                                  Container(
                                    color: Color(0xffFFAF3F0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        if (guest.passportno != null)
                                          Container(
                                            padding: EdgeInsets.only(right: 6),
                                            child: Text(
                                              " Pasaport no: ${guest.passportno}",
                                            ),
                                          ),
                                        if (guest.nationalityid != null)
                                          Container(
                                            padding: EdgeInsets.only(left: 5),
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                                "TC :${guest.nationalityid ?? '-'}"),
                                          ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                      height: 1, color: Color(0xff1859FFFF)),
                                  Container(
                                    decoration: const BoxDecoration(
                                        color: Color(0xffFFAF3F0),
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                        )),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(left: 4),
                                          child: Text(" Age: ${guest.age}"),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(right: 5),
                                          child: Text(
                                              "${guest.nationalityidName}"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }
                  }),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      width: size.width,
      child: GestureDetector(
        onTap: () async {
          if (widget.item!.resid != null) {
            bool response =
                await services.getReservationDetailRequest(widget.item!.resid!);
            if (response == true) {
              openNewScreen(context);
            } else {
              Dialog(
                child: Text("Bir hata oluştu."),
              );
            }
          } else {
            Text("ResId Bulunamadı");
          }
        },
        child: Container(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.red,
                    offset: Offset(0.0, -2.0),
                    blurRadius: 4.0,
                    spreadRadius: 2.0,
                  )
                ],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                border: Border.all(color: Colors.black12),
                color: const Color(0xffF6F4EB),
              ),
              alignment: Alignment.centerLeft,
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
              decoration: BoxDecoration(
                color: const Color(0xffF6F4EB),
                border: Border.all(color: Colors.black12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.mode_night,
                          size: 25,
                        ),
                        Text(
                          "${widget.item!.night ?? '-'} Nights",
                          style: const TextStyle(fontSize: 20),
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
                color: const Color(0xffF6F4EB),
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
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.red,
                    offset: Offset(0.0, 2.0),
                    blurRadius: 4.0,
                    spreadRadius: 2.0,
                  )
                ],
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                border: Border.all(
                  color: Colors.black12,
                ),
                color: const Color(0xffF6F4EB),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10),
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
                  Container(
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
                            ? const Icon(Icons.account_circle_sharp)
                            : const Icon(Icons.people_outline_rounded),
                        Text("${widget.item?.echd ?? '-'}",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(Icons.child_care_sharp),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(20)),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                        "${widget.item!.checkoutdate!.day}.${widget.item!.checkoutdate!.month}.${widget.item!.checkoutdate!.year}",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
