import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../accèsapli/pageacceuille.dart';
import '../../color model/model_couleur.dart';

class Colocataire_page extends StatefulWidget {
  const Colocataire_page({super.key});

  @override
  State<Colocataire_page> createState() => _Colocataire_pageState();
}

class _Colocataire_pageState extends State<Colocataire_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: darkMode?Colors.black :Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 32, 29, 190),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Page_acceuille();
            }));
          },
          icon: Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: Container(
            width: 100,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
              child: Row(
                children: [
                  Image.asset(
                    "image/p4112.png",
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            )),
      ),

body: Column(
  children: [



SizedBox(
          height: 80,
                  ),

    Center(child: Text('Service non disponible pour l\'instant' ,  style: GoogleFonts.openSans(
                        fontSize: 11,
                        fontWeight: FontWeight.w800,
                        color: darkMode?Colors.white :Colors.black),),)
  ],
),
    );
  }
}