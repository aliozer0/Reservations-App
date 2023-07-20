import 'package:flutter/material.dart';

class ResNewScreen extends StatefulWidget {
  const ResNewScreen({super.key});

  @override
  State<ResNewScreen> createState() => _ResNewScreenState();
}

class _ResNewScreenState extends State<ResNewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Reservation List'),
          backgroundColor: const Color.fromARGB(255, 63, 17, 177),
          foregroundColor: Colors.white,
        ),
      body:
        Container(

          color: Colors.deepPurple,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.4,
          child: Column(
            children: [


            Container(
              height: MediaQuery.of(context).size.height*0.07,
              color:Colors.lightBlue,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.3),
                  child: Row(
                    children: [
                    Icon(Icons.mode_night ,size: 25,),
                    SizedBox(width: 3,),
                    Text("3",style:TextStyle(fontSize: 20),),
                    SizedBox(width: 3,),
                    Text("Night",style:TextStyle(fontSize: 20)),
                  ],),
                ),
               Container(

                 alignment: Alignment.center,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                       Icon(Icons.home),
                       SizedBox(width: 3,),
                       Text("STD",style: TextStyle(color:Colors.black,fontSize: 20),),
                       SizedBox(width: 3,),
                       Text("/"),
                       SizedBox(width: 3,),
                       Text("Room No",style: TextStyle(color:Colors.black,fontSize: 20), )

                   ],
                 ),
               )
              ],
            ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Container(
                   height: MediaQuery.of(context).size.height*0.06,
                    alignment: Alignment.center,
                    color: Colors.lightBlueAccent,
                    child: Text('May 22 ',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  ),
                 Container(
                   height: MediaQuery.of(context).size.height*0.06,
                   width: MediaQuery.of(context).size.width*0.2,
                   alignment: Alignment.center,
                   color: Colors.lightBlueAccent,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(
                         child: Text("5",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                       ),
                       Container(
                         child: Icon(Icons.people_outline_rounded),
                       ),
                     ],
                   ),
                 ),

                  Container(
                    height: MediaQuery.of(context).size.height*0.06,
                    color: Colors.lightBlueAccent,
                    alignment: Alignment.center,
                    child: Text('May 29 ',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            )
            ],
          ),

        )
    );
  }
}