import 'package:bottom_nav_bar/home.dart';
import 'package:bottom_nav_bar/route.dart';
import 'package:bottom_nav_bar/signup.dart';
import 'package:flutter/material.dart';

import 'login.dart';
import 'mybottom_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: <String, WidgetBuilder>{
        HOME_: (BuildContext context) => Home(),
        LOG_IN: (BuildContext context) => LogIn(),
        SIGN_UP: (BuildContext context) => SignUp(),
        BTM_NAV_BAR: (BuildContext context) => MyBottomNavBar(),
      },
      initialRoute: BTM_NAV_BAR,
    );
  }
}
