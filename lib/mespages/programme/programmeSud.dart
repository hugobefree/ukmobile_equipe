import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukmoblie/acc%C3%A8sapli/pageacceuille.dart';

import '../../color model/model_couleur.dart';

class ProgrammSud extends StatefulWidget {
  const ProgrammSud({super.key});

  @override
  State<ProgrammSud> createState() => _ProgrammSudState();
}

class _ProgrammSudState extends State<ProgrammSud> {
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
      body: Column( mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Aucun programme pour l\instant ; veuillez actualiser' ,
          style: GoogleFonts.openSans( color:darkMode?Colors.white : Colors.black87), )),

          ]
      ),
    );
  }
}