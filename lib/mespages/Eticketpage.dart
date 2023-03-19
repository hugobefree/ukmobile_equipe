import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukmoblie/acc%C3%A8sapli/pageacceuille.dart';

import '../color model/model_couleur.dart';

class Eticket extends StatefulWidget {
  const Eticket({super.key});

  @override
  State<Eticket> createState() => _EticketState();
}

class _EticketState extends State<Eticket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:darkMode?Colors.black : Colors.white,
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
      body: Center(
        child: Text('Les e-tickets ne sont pas encore diponible ' , style: GoogleFonts.orbitron(
          fontSize: 17, 
          fontWeight: FontWeight.w600,
          color:darkMode?Colors.white : Colors.black87
        ),),
      ),
    );
  }
}