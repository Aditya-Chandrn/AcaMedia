import 'package:acamedia/pages/dms.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'navBar.dart';

class homePage  extends StatefulWidget {
  const homePage ({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navBar(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Chats"),
        // actions: [
        //   IconButton(
        //       onPressed: () {},
        //       icon: Icon(
        //         Icons.logo_dev_outlined,
        //         color: Colors.white,
        //       )),
        // ],
        backgroundColor: Color.fromARGB(255, 32, 32, 32),
      ),
      body:Column(
        children: [
          Container(
            color: Color.fromARGB(255, 32, 32, 32),
            // child: myContainer(),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => DMpage()),));
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
    ;
  }
}
