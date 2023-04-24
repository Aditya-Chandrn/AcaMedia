import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../widgets/widgets.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:20.0, left: 25),
            child: SingleChildScrollView(
              child: Center(
                child: Row(
                  children: [
                    Image.asset("assets/Icon Comps.png", width: 30, height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left:9.0),
                      child: Text("AcaMedia",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Text("Login to join other students and teachers.", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.white),),
          Padding(
            padding: const EdgeInsets.only(top:80.0),
            child: Container(
              color: Colors.white,
              width: 370,
              height: 500,
              child: SingleChildScrollView(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child:Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const Text("Login",
                        style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:40.0, left: 10, right: 10),
                          child: TextFormField(
                            decoration: textInputDecoration.copyWith(
                              labelText: "Email",
                              prefixIcon: Icon(Icons.email,
                              color: Colors.black,
                              )
                            ),
                          ),
                        )
                      ],
                    ), 
                    ) 
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Color.fromARGB(255, 32, 32, 32),
    );
  }
}