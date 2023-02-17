import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../accèsapli/pageacceuille.dart';


class Contacter_support extends StatefulWidget {
  const Contacter_support({super.key});

  @override
  State<Contacter_support> createState() => _Contacter_supportState();
}

class _Contacter_supportState extends State<Contacter_support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
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
      Padding(
              padding: const EdgeInsets.all(17.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      decoration: BoxDecoration(
                                       color: Color.fromARGB(255, 22, 73, 226),
                                        borderRadius: BorderRadius.circular(6),
                                      ),

                    
                   width: 100,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                     child: Column(
                       children: [
                         Text('Assistance pour trouver une chambre ' , style: GoogleFonts.openSans(
                              fontSize: 12.5, 
                              fontWeight: FontWeight.w900,
                              color: Colors.white
                               ),),
                            SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                  child: GestureDetector(

                                     onTap: () {

                                 },

                                    child: Container(
                                      
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 82, 233, 72),
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                      
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                        child: Text('Oui' , style: GoogleFonts.openSans(
                                                              fontSize: 15, 
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.white
                                                               ),),
                                      ),
                                    ),
                                  ),
                                ),
                       ],
                     ),
                   ),
                         ),
                   
                   SizedBox(width: 10,),
                     
            
                    Container(
                      alignment: Alignment.center,
                     decoration: BoxDecoration(
                                       color: Color.fromARGB(255, 22, 73, 226),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                    
                   width: 100,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                     child: Column(
                       children: [
                         Text('Assistance pour la Market place' , style: GoogleFonts.openSans(
                              fontSize: 12.5, 
                              fontWeight: FontWeight.w900,
                              color: Colors.white
                               ),),
                            SizedBox(height: 15,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                  child: GestureDetector(
                                 onTap: () {

                                 },

                                    child: Container(
                                      
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 82, 233, 72),
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                      
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                        child: Text('Oui' , style: GoogleFonts.openSans(
                                                              fontSize: 15, 
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.white
                                                               ),),
                                      ),
                                    ),
                                  ),
                                ),
                       ],
                     ),
                   ),
                         ),
                            SizedBox(width: 10,),
                     
            
                    Container(
                      alignment: Alignment.center,
                     decoration: BoxDecoration(
                                       color: Color.fromARGB(255, 22, 73, 226),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                    
                   width: 100,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                     child: Column(
                       children: [
                         Text('Autre type d\'aide' , style: GoogleFonts.openSans(
                              fontSize: 12.5, 
                              fontWeight: FontWeight.w900,
                              color: Colors.white
                               ),),
                            SizedBox(height: 15,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                  child: GestureDetector(
                                 onTap: () {

                                 },

                                    child: Container(
                                      
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 82, 233, 72),
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                      
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                        child: Text('Oui' , style: GoogleFonts.openSans(
                                                              fontSize: 15, 
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.white
                                                               ),),
                                      ),
                                    ),
                                  ),
                                ),
                       ],
                     ),
                   ),
                         ),

                         
            
                ],
              ),
            ),

    Text('Le support est momentanement indisponible')
  ],

),


    );
  }
}