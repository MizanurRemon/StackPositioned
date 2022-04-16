// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const myApp());
}

void show_toast(var type) {
  Fluttertoast.showToast(
    msg: type,
  );
}

// ignore: camel_case_types
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            leading: IconButton(
                onPressed: () {
                  show_toast("This is menu");
                },
                icon: const Icon(Icons.menu)),
            title: const Text(
              "Stack",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          body: const bodyclass(),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class bodyclass extends StatefulWidget {
  const bodyclass({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MainBody();
}

class MainBody extends State<bodyclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 20, 43, 20),
          ),
          const Positioned(
            bottom: -25,
            child: CircleAvatar(
              backgroundColor: Colors.yellow,
              radius: 50,
              child: Center(
                child: Icon(Icons.menu),
              ),
            ),
          )
        ],
      )),
    );
  }
}
