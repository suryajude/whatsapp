import 'package:flutter/material.dart';
import 'package:whatsapp/pages/home.dart';
import 'package:whatsapp/pages/optioins/accounts.dart';
import 'package:whatsapp/pages/optioins/help.dart';
import 'package:whatsapp/pages/optioins/privacy.dart';
import 'package:whatsapp/pages/optioins/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Privacy());
  }
}
