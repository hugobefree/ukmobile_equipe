import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ukmoblie/les%20premi%C3%A8res%20pages/homepage.dart';
import 'package:ukmoblie/les%20premi%C3%A8res%20pages/pageconnexion.dart';

import 'accèsapli/pageacceuille.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: FirebaseAuth.instance.currentUser == null
          ? COnnexion()
          :Page_acceuille() ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     
      home: Homepage(),
    );
  }
}
