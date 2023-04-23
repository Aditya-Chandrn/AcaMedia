// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:acamedia/calls.dart';
import 'package:acamedia/dms.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

// class myContainer extends StatelessWidget {
//   const myContainer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // width: double.infinity,
//       // child: Stack(
//       //   children: [
//       //     Container(
//       //         child: Column(
//       //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       //         mainAxisSize: MainAxisSize.max,
//       //       children: [
//       //         // Container(child: Text('AM',textAlign: TextAlign.left, style: TextStyle(color: Colors.white),)),
//       //         Container(
//       //             child: Expanded(
//       //             child: ListView(
//       //             children: [
//       //               Row(
//       //               children: [
//       //                 Container(
//       //                   padding: EdgeInsets.all(20),
//       //                   child:Text('AM',textAlign: TextAlign.left, style: TextStyle(color: Colors.white)),
//       //                 ),
//       //               ],
//       //               ),
//       //               Row(
//       //               children: [
//       //                 Container(
//       //                   padding: EdgeInsets.all(10),
//       //                   child:
//       //                   IconButton(onPressed: (){},
//       //                   icon: Icon(Icons.search,
//       //                   color: Colors.white,)
//       //                   ),
//       //                 ),
//       //               ],
//       //               ),
//       //               Row(
//       //               children: [
//       //                 Container(
//       //                   padding: EdgeInsets.all(10),
//       //                   child:
//       //                   IconButton(onPressed: (){},
//       //                   icon:Icon(Icons.chat_bubble_outline_outlined,
//       //                   color: Colors.white,)),
//       //                 ),
//       //               ],
//       //               ),
//       //               Row(
//       //               children: [
//       //                 Container(
//       //                   padding: EdgeInsets.all(10),
//       //                   child:
//       //                   IconButton(onPressed: (){}, icon: Icon(Icons.phonelink_ring_outlined,
//       //                   color: Colors.white,)
//       //                   ),
//       //                 ),
//       //               ],
//       //               ),
//       //             ],
//       //           ),
//       //         )),
//       //       ],
//       //     )),
//       //     Container(
//       //       transform: Matrix4.translationValues(60, 0, 1),
//       //       width: double.infinity,
//       //       height: double.infinity,
//       //       color:  Color.fromARGB(255, 32, 32, 32),
//       //     ),
//       //     Row(
//       //       children: [
//       //         Padding(
//       //           padding: const EdgeInsets.only(top: 40, left: 60),
//       //           child: ElevatedButton(
//       //               onPressed: () {},
//       //               style: ElevatedButton.styleFrom(
//       //                 primary: Color.fromARGB(255, 32, 32, 32),
//       //                 minimumSize: Size(175, 50),
//       //               ),
//       //               child: Text('Chats'),
//       //             ),
//       //         ),
//       //         Padding(
//       //           padding: const EdgeInsets.only(top: 40),
//       //           child: ElevatedButton(
//       //               onPressed: () {},
//       //               style: ElevatedButton.styleFrom(
//       //                   primary: Color.fromARGB(255, 32, 32, 32),
//       //                   minimumSize: Size(175, 50)),
//       //               // side: BorderSide(width: 3, color: Colors.blue)),
//       //               child: Text('Calls'),
//       //             ),
//       //         ),
//       //       ],
//       //     ),
//       child: ElevatedButton(
//         onPressed: () {},
//         style: ElevatedButton.styleFrom(
//             primary: Colors.blueGrey, fixedSize: Size(412, 75)),
//         child: Padding(
//           padding: const EdgeInsets.only(top: 10),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.only(left: 3),
//                     child: Icon(Icons.circle_outlined),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(left: 3),
//                     child: Text('Cheeku'),
//                   ),
//                 ],
//               ),
//               Container(
//                 alignment: Alignment.topLeft,
//                 padding: const EdgeInsets.only(top: 7, left: 3),
//                 child: Text(
//                     "Hello Ma'am, I have a doubt.                                               19:05"),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//     //         ),
//     //     ],
//     //   ),
//     // );
//   }
// }

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // bottom: PreferredSize(child: SizedBox(height: 20), preferredSize: Size.fromHeight(25),),
        // title: Text('Title'),
        actions: [
          // IconButton(
          //     onPressed: () {},
          //     icon: Icon(
          //       Icons.logo_dev_outlined,
          //       color: Colors.white,
          //     )),
          ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 32, 32, 32),
              minimumSize: Size(60, 50),
            ),
          child: Icon(Icons.logo_dev)),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 32, 32, 32),
              minimumSize: Size(175, 50),
            ),
            child: Text('Chats'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => callPage()));
            },
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 32, 32, 32),
                minimumSize: Size(175, 50)),
            // side: BorderSide(width: 3, color: Colors.blue)),
            child: Text('Calls'),
          ),
        ],
        backgroundColor: Color.fromARGB(255, 32, 32, 32),
      ),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 32, 32, 32),
            // child: myContainer(),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => DMpage()));
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey, fixedSize: Size(412, 75)),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 3),
                          child: Icon(Icons.circle_outlined),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 3),
                          child: Text('Cheeku'),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(top: 7, left: 3),
                      child: Text(
                          "Hello Ma'am, I have a doubt.                                               19:05"),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
