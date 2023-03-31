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
      backgroundColor: darkMode ? Colors.black : Colors.grey[100],
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
        title: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          
          child: Container(
              width: 100,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Image.asset(
                  "image/p4112.png",
                  fit: BoxFit.cover,
                ),
              )),
        ),
      ),
      body: GridView.count(crossAxisCount: 2 , 
      children: [
        Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                       width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12) , 
                            color: Color.fromARGB(255, 82, 233, 72),),
                      child: Column(
                        children: [
                          Container(
                             child: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                               child: Text('vous avez le choix entre un service universitaire  ' , style: GoogleFonts.openSans(
                               fontSize: 12, 
                               fontWeight: FontWeight.w900,
                               color: Colors.white
                                     ),),
                             ),
                           ),
                    const SizedBox(height: 5,),
                            SizedBox(
                              height: 45,
                              width: 45,
                    
                                 child: SizedBox(child: Image.asset("image/crews.jpg"))),
                        ],
                      ),
                    ),
                  ),

                   Padding(
                     padding: const EdgeInsets.all(12.0),
                     child: Container(
                       width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12) , 
                            color: Color.fromARGB(255, 82, 233, 72),),
                       child: Column(
                         children: [
                           Container(                  
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                                        child: Text('ou un service professionnel  ' , style: GoogleFonts.openSans(
                               fontSize: 15, 
                               fontWeight: FontWeight.w900,
                               color: Colors.white
                                ),),
                                      ),
                              ),

                              SizedBox(
                                height: 45,
                                width: 45,
                                child: Image.asset("image/sold.png"),
                              )
                         ],
                       ),
                     ),
                   ),

                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12) , 
                            color: Color.fromARGB(255, 22, 73, 226),),
                                            
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
                                           
                                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(12) , 
                            color: Color.fromARGB(255, 22, 73, 226),),
                                           
                                           child: Container(
                                                  decoration: BoxDecoration(
                                             color: Color.fromARGB(255, 82, 233, 72),
                                             borderRadius: BorderRadius.circular(9),
                                           ),
                                             child: Padding(
                                               padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                               child: Text('Clique ici' , style: GoogleFonts.openSans(
                                                                     fontSize: 15, 
                                                                     fontWeight: FontWeight.bold,
                                                                     color: Colors.white
                                                                      ),),
                                             ),
                                           ),
                                         ),
                                       ),
                                     ),
                            ],
                          ),
                                           ),
                              ),
                        ),
                              
                       Padding(
                         padding: const EdgeInsets.all(12.0),
                         child: Container(
                           alignment: Alignment.center,
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(12) , 
                            color: Color.fromARGB(255, 22, 73, 226),),
                        
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
                                           
                                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(12) , 
                            color: Color.fromARGB(255, 22, 73, 226),),
                                           
                                           child: Padding(
                                             padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                             child: Container(
                                                 decoration: BoxDecoration(
                                             color: Color.fromARGB(255, 82, 233, 72),
                                             borderRadius: BorderRadius.circular(9),
                                           ),
                                               child: Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                                 child: Text('Clique ici' , style: GoogleFonts.openSans(
                                                                       fontSize: 15, 
                                                                       fontWeight: FontWeight.bold,
                                                                       color: Colors.white
                                                                        ),),
                                               ),
                                             ),
                                           ),
                                         ),
                                       ),
                                     ),
                            ],
                          ),
                                          ),
                              ),
                       ),

                         Padding(
                           padding: const EdgeInsets.all(12.0),
                           child: Container(
                                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(12) , 
                            color: Color.fromARGB(255, 22, 73, 226),),
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
                                             child: Text('Clique ici' , style: GoogleFonts.openSans(
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
                         ),
                            Padding(
                           padding: const EdgeInsets.all(12.0),
                           child: Container(
                                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(12) , 
                            color: Color.fromARGB(255, 22, 73, 226),),
                                            width: 150,
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                                              child: Column(
                            children: [
                              Text('contacter le support  ' , style: GoogleFonts.openSans(
                                   fontSize: 15, 
                                   fontWeight: FontWeight.w900,
                                   color: Colors.white
                                    ),),
                                       SizedBox(
                                height: 45,
                                width: 45,
                                child: Image.asset("image/customer-service1.png"),
                              ),
                                 SizedBox(height: 10,),
                                     Padding(
                                       padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                       child: GestureDetector(
                         
                                          onTap: () {
                                              showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          height: 200,
                          width: 150,
                          color: darkMode? Color.fromARGB(255, 95, 91, 91) :Color.fromARGB(255, 235, 234, 237),
                          child: Column(
                            children: [
                             const  SizedBox(
                                height: 10,
                              ),
                              Text(
                                'comment voulez vous nous joindre ?',
                                style: GoogleFonts.openSans(
                                    fontSize: 13.3,
                                    fontWeight: FontWeight.w800,
                                    color: Color.fromARGB(255, 23, 23, 24)),
                              ),
                             const  SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      /*
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return PageprogrammeNord();
                                      })); */
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(7),
                                          color:
                                              Color.fromARGB(255, 26, 184, 31)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text('Nous appeler',
                                                style: GoogleFonts.openSans(
                                                  fontSize: 13.3,
                                                  fontWeight: FontWeight.w800,
                                                  color: Colors.white,
                                                )),
                                                   SizedBox(
                                height: 30,
                                width: 30,
                                child: Image.asset("image/support3.png"),
                              )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                    /*  Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return ProgrammSud();
                                      })); */
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(7),
                                          color:
                                              Color.fromARGB(255, 26, 184, 31)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                           
                                            Text('Nous écris ',
                                                style: GoogleFonts.openSans(
                                                  fontSize: 13.3,
                                                  fontWeight: FontWeight.w800,
                                                  color: Colors.white,
                                                )),   SizedBox(
                                height: 30,
                                width: 30,
                                child: Image.asset("image/technical-support.png"),
                              )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    });
                                     
                         
                                      },
                                         child: Container(
                                           
                                           decoration: BoxDecoration(
                                             color: Color.fromARGB(255, 82, 233, 72),
                                             borderRadius: BorderRadius.circular(9),
                                           ),
                                           
                                           child: Padding(
                                             padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                             child: Text('Clique ici' , style: GoogleFonts.openSans(
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
                         ),
      ],
      )
  )
  ;}
}
