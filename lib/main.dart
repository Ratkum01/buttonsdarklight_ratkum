import 'package:darklightbuttons/my_flutter_app_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false,));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.grey[850] : Colors.grey[300],
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              alignment: Alignment.center,
              height: 70,
              width: 250,
              child: Text(
                'RatkuM',
                style: GoogleFonts.anton(
                    color: darkMode ? Colors.white : Colors.grey[850],
                    fontSize: 50),
              ),
              decoration: BoxDecoration(
                  color: darkMode ? Colors.grey[850] : Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: darkMode ? (Colors.grey[900])! : Colors.grey,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: darkMode ? (Colors.grey[800])! : Colors.white,
                        offset: Offset(-5.0, -5.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                  ])),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 150,
              width: 150,
              child: Icon(
                MyFlutterApp.kazakh,
                size: 100,
                color: darkMode ? Colors.white : Colors.grey[850],
              ),
              decoration: BoxDecoration(
                  color: darkMode ? Colors.grey[850] : Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                        color: darkMode ? (Colors.grey[900])! : Colors.grey,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: darkMode ? (Colors.grey[800])! : Colors.white,
                        offset: Offset(-5.0, -5.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                  ])),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    darkMode = true;
                  });
                },
                child: Text(
                  'Dark',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    shadowColor: MaterialStatePropertyAll(Colors.white),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.grey[850])),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    darkMode = false;
                  });
                },
                child: Text(
                  'Light',
                  style: TextStyle(color: Colors.grey[850]),
                ),
                style: ButtonStyle(
                    shadowColor: MaterialStatePropertyAll(Colors.grey[850]),
                    backgroundColor: MaterialStatePropertyAll(Colors.white)),
              )
            ],
          )
        ],
      )),
    );
  }
}
