import 'package:flutter/material.dart';
import 'package:note_mesh/home.dart';
import 'files.dart';
import 'login.dart';
import 'sign-up.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // Generated by FlutterFire CLI
import 'package:firebase_app_check/firebase_app_check.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAppCheck.instance.activate();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
        '/home': (context) => HomeScreen(),
        '/files': (context) => FileScreen(),
      },
      initialRoute: '/',
    );
  }
}
