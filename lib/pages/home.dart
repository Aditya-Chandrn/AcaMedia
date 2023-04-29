// ignore_for_file: prefer_const_constructors

import 'package:acamedia/helper/helper_functions.dart';
import 'package:acamedia/pages/auth/login.dart';
import 'package:acamedia/pages/dms.dart';
import 'package:acamedia/pages/search.dart';
import 'package:acamedia/service/auth_ser.dart';
import 'package:acamedia/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'calls.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  AuthService authService = AuthService();
  String userName = "";
  String userEmail = "";

  @override
  void initState() {
    super.initState();
    gettingUserData();
  }

  gettingUserData() async {
    await helperFunctions.getUserEmailSF().then((value) {
      userEmail = value!;
    });
    await helperFunctions.getUserNameSF().then((val) {
      userName = val!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  userName,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                accountEmail: Text(
                  userEmail,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                      child: Image.network(
                    "https://helios-i.mashable.com/imagery/articles/00apgKgIAO4EnFfjOgCApRe/hero-image.fill.size_1248x702.v1619086604.jpg",
                    fit: BoxFit.cover,
                    width: 80,
                    height: 80,
                  )),
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 32, 32, 32),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.chat_bubble_sharp),
              title: Text("Chats", style: TextStyle(fontSize: 20)),
              selected: true,
              selectedColor: Colors.blue,
              onTap: () => {
                // nextPageReplace(context, homePage())
                Navigator.pop(context)
              },
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text("Calls", style: TextStyle(fontSize: 20)),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => callPage(),
                    ))
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings", style: TextStyle(fontSize: 20)),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout", style: TextStyle(fontSize: 20)),
              onTap: () async {
                showDialog(
                    barrierDismissible: true,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Logout"),
                        content: Text("Are you sure you want to logout?"),
                        actions: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.cancel,
                                color: Colors.red,
                              )),
                          IconButton(
                              onPressed: () async {
                                await authService.signOut();
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) => loginPage()),
                                    (route) => false);
                              },
                              icon: Icon(
                                Icons.done,
                                color: Colors.green,
                              ))
                        ],
                      );
                    });
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Chats"),
        actions: [
          IconButton(
              onPressed: () {
                nextPage(context, searchPage());
              },
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
        backgroundColor: Color.fromARGB(255, 32, 32, 32),
      ),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 32, 32, 32),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => DMpage()),
                    ));
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
