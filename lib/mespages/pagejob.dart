import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../accèsapli/pageacceuille.dart';
import '../color model/model_couleur.dart';


class Job_Page extends StatefulWidget {
  const Job_Page({super.key});

  @override
  State<Job_Page> createState() => _Job_PageState();
}

class _Job_PageState extends State<Job_Page> {
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

      body: Column(
        children: [

           SizedBox( height: 25,),

              Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 171, 72, 233),
          borderRadius: BorderRadius.circular(10)
        ),     
                  width: 390,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: Text('trouver un Job pour arrondire ses fin de mois' , style: GoogleFonts.inter(
                    fontSize: 12, 
                    fontWeight: FontWeight.w900,
                    color: Colors.white
                          ),),
                  ),
                ),

                SizedBox( height: 25,),

                Center(
                  child: Text(' Aucun job  n\' est disponible pour le moment' , 
                   style: GoogleFonts.inter(
                    fontSize: 15, 
                    fontWeight: FontWeight.w900,
                    color:darkMode?Colors.white : Colors.black
                          ),
                  ),
                )

        ],
      ),
    );
  }
}