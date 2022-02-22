import 'package:flutter/material.dart';
import 'package:onboard_homepages/home/homePageView.dart';
import 'package:onboard_homepages/onboard/onboardPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff293855),
        backgroundColor: const Color(0xff293855),
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: const onboard_view(),
    );
  }
}
