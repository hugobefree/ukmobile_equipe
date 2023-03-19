import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukmoblie/acc%C3%A8sapli/pageacceuille.dart';
import 'package:ukmoblie/mespages/support_page/contacter_support.dart';

import '../color model/model_couleur.dart';

class Marketplace extends StatefulWidget {
  const Marketplace({super.key});

  @override
  State<Marketplace> createState() => _MarketplaceState();
}

class _MarketplaceState extends State<Marketplace> {
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
                          padding: const EdgeInsets.all(10.0),
                          child: Text(' Contacter le support pour exposer ses produit  ' , style: GoogleFonts.inter(
                          fontSize: 10, 
                          fontWeight: FontWeight.w900,
                          color: Colors.white
                                ),),
                        ),
                        SizedBox( width: 6,),

                             Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                child: GestureDetector(
                              
                                       onTap: () {

             Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Contacter_support();
            }));
                              
                                   },
                              
                                      child: Container(
                                        
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 32, 216, 19),
                                          borderRadius: BorderRadius.circular(9),
                                        ),
                                        
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                          child: Text(' En Clicquant ici' , style: GoogleFonts.openSans(
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

              //  SizedBox( height: 25,),

              //    Container(
              //      child: Padding(
              //        padding: const EdgeInsets.all(15.0),
                //      child: Image.asset(
                  //      "image/.png",
                    //  ),
                    //),
                  //),
                  
                SizedBox( height: 25,),

          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text('Désormais il est possible d\'exposer ses produit de vente sur la Marcket Place ' , style: GoogleFonts.orbitron(
                  fontSize: 12, 
                  fontWeight: FontWeight.w600,
                  color: darkMode?Colors.white : Colors.black87
                ),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}