import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'app_routes.dart';

class AlisonApp extends StatefulWidget {
  const AlisonApp({super.key});

  @override
  State<AlisonApp> createState() => _AlisonAppState();
}

var navigatorKey = GlobalKey<NavigatorState>();

class _AlisonAppState extends State<AlisonApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Total',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Inter",
        scaffoldBackgroundColor: HexColor("#FFFFFF"),
      ),
      initialRoute: '/bottomNavBar',
      routes: Routes.a,
    );
  }
}
