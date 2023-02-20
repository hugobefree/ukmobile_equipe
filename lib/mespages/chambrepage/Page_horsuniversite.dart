import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../accèsapli/pageacceuille.dart';
import '../../color model/model_couleur.dart';

class Chambre_horsUnivPage extends StatefulWidget {
  const Chambre_horsUnivPage({super.key});

  @override
  State<Chambre_horsUnivPage> createState() => _Chambre_horsUnivPageState();
}

class _Chambre_horsUnivPageState extends State<Chambre_horsUnivPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: darkMode?Colors.black: Colors.white,
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
                    "image/uk1.jpg",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Mobile',
                    style: GoogleFonts.orbitron(
                        fontSize: 11,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
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
    Center(child: Text('Service non disponible pour l\'instant' ,  style: GoogleFonts.orbitron(
                        fontSize: 11,
                        fontWeight: FontWeight.w800,
                        color: darkMode?Colors.white :Colors.black),),)
  ],
),
    );
  }
}