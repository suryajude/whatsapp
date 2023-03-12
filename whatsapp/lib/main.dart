import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/pages/home.dart';
import 'package:whatsapp/pages/optioins/accounts.dart';
import 'package:whatsapp/pages/optioins/help.dart';
import 'package:whatsapp/pages/optioins/notifications.dart';
import 'package:whatsapp/pages/optioins/privacy.dart';
import 'package:whatsapp/pages/optioins/settings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    FirebaseOptions(
        apiKey: apiKey,
        appId: appId,
        messagingSenderId: messagingSenderId,
        projectId: projectId);
  } else {
    Firebase.initializeApp();
  }
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        '/accounts': (context) => const account(),
        '/privacy': (context) => const Privacy(),
        '/notifications': (context) => const Notifications(),
        '/help': (context) => const help()
      },
    );
  }
}
