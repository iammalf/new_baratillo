import 'package:flutter/material.dart';
import 'package:new_baratillo/screens/onboarding.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Baratillo Cusco',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => StartState();
}

class StartState extends State<MyHomePage> {
  @override
  void initState() {
    //TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const OnBoardingPage()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xffF5591F),
              gradient: LinearGradient(colors: [
                (Color(0xffF5591F)),
                Color(0xffF2861E),
              ], begin: Alignment.centerLeft, end: Alignment.centerRight),
            ),
          ),
          Center(
            child: Image.asset(
              "assets/images/login.png",
              height: 250,
              width: 250,
            ),
          ),
        ],
      ),
    );
  }
}
