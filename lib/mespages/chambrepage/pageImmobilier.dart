import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukmoblie/acc%C3%A8sapli/pageacceuille.dart';
import 'package:ukmoblie/mespages/chambrepage/Page-cite.dart';
import 'package:ukmoblie/mespages/chambrepage/Page_colocataire.dart';
import 'package:ukmoblie/mespages/chambrepage/Page_horsuniversite.dart';
import 'package:ukmoblie/mespages/support_page/contacter_support.dart';

import '../../color model/model_couleur.dart';

class Immobilier extends StatefulWidget {
  const Immobilier({super.key});

  @override
  State<Immobilier> createState() => _ImmobilierState();
}

class _ImmobilierState extends State<Immobilier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: darkMode?Colors.black : Colors.grey[100],
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
          SizedBox(height: 12,), 
           Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 171, 72, 233),
          borderRadius: BorderRadius.circular(10)
        ),     
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: Text('les services disponible ici ne sont pas tous  gratuits   ' , style: GoogleFonts.openSans(
                    fontSize: 12, 
                    fontWeight: FontWeight.w900,
                    color: Colors.white
                          ),),
                  ),
                ),

          SizedBox(height: 25,), 

          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Color.fromARGB(255, 82, 233, 72),
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Text('vous avez le choix entre un service universitaire  ' , style: GoogleFonts.openSans(
                    fontSize: 12, 
                    fontWeight: FontWeight.w900,
                    color: Colors.white
                          ),),
                  ),
                ),
          
                   SizedBox(width: 10,),
          
                   Container(
                    color: Color.fromARGB(255, 82, 233, 72),
             width: 150,
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
               child: Text('ou un service professionnel  ' , style: GoogleFonts.openSans(
                    fontSize: 15, 
                    fontWeight: FontWeight.w900,
                    color: Colors.white
                     ),),
             ),
                   ),
              ],
            ),
          ),


          SizedBox(height: 15,), 

            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Color.fromARGB(255, 22, 73, 226),
                   width: 150,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                     child: Column(
                       children: [
                         Text('Trouver une chambre à la cité ' , style: GoogleFonts.openSans(
                              fontSize: 15, 
                              fontWeight: FontWeight.w900,
                              color: Colors.white
                               ),),
                            SizedBox(height: 25,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                  child: GestureDetector(

                                     onTap: () {
                                       Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Cite_Page();
            }));

                                 },

                                    child: Container(
                                      
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 82, 233, 72),
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                      
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                        child: Text('Clicque ici' , style: GoogleFonts.openSans(
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
                   
                   SizedBox(width: 18,),
                     
            
                    Container(
                      alignment: Alignment.center,
                    color:  Color.fromARGB(255, 22, 73, 226),
                   width: 150,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                     child: Column(
                       children: [
                         Text('Trouver une chambre hors université ' , style: GoogleFonts.openSans(
                              fontSize: 12.5, 
                              fontWeight: FontWeight.w900,
                              color: Colors.white
                               ),),
                            SizedBox(height: 25,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                  child: GestureDetector(
                                 onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Chambre_horsUnivPage();
            }));

                                 },

                                    child: Container(
                                      
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 82, 233, 72),
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                      
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                        child: Text('Clicque ici' , style: GoogleFonts.openSans(
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
          
           SizedBox(height: 25,), 


           Container(
                    color: Color.fromARGB(255, 22, 73, 226),
                   width: 150,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                     child: Column(
                       children: [
                         Text('Trouver une chambre avec un colocataire  ' , style: GoogleFonts.openSans(
                              fontSize: 15, 
                              fontWeight: FontWeight.w900,
                              color: Colors.white
                               ),),
                            SizedBox(height: 25,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                  child: GestureDetector(

                                     onTap: () {
                                       Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Colocataire_page();
            }));

                                 },

                                    child: Container(
                                      
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 82, 233, 72),
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                      
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                        child: Text('Clicque ici' , style: GoogleFonts.openSans(
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

                         SizedBox( height: 85,),

          Container(
            width: 400,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 171, 72, 233),
          borderRadius: BorderRadius.circular(10)
        ),     
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(' Contacter le support pour assistance  ' , style: GoogleFonts.openSans(
                          fontSize: 12, 
                          fontWeight: FontWeight.w900,
                          color: Colors.white
                                ),),
                        ),
                        SizedBox( width: 25,),

                             Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                child: GestureDetector(
                              
                                       onTap: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Contacter_support();
            }));
                                   },
                              
                                      child: Container(
                                        
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 216, 19, 19),
                                          borderRadius: BorderRadius.circular(9),
                                        ),
                                        
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                          child: Text('Clicque ici' , style: GoogleFonts.openSans(
                                                                fontSize: 10, 
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
 
        ]
      ),
    );
  }
}