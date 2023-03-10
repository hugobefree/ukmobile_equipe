import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukmoblie/les%20premi%C3%A8res%20pages/pageconnexion.dart';
import 'package:ukmoblie/les%20premi%C3%A8res%20pages/pageinscription.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      backgroundColor: Colors.grey[100],
      body: Column(
        
        children: [
          SizedBox(height: 50,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              child: SizedBox(child: Image.asset("image/uk.jpg"))),
            SizedBox(width: 5,),
             Text('Mobile' , style: GoogleFonts.orbitron(
                fontSize: 35,
                fontWeight: FontWeight.w800,
                color: Colors.black87
              ) ,),
        
        
          ],
        ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: 
              Column(
                children: [
                  SizedBox(height: 30,),

              //

              SizedBox(height: 30,),
              Text('Bienvenu à l\'université de Kara mobile' , style: GoogleFonts.openSans(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black87
              ) ,),SizedBox(height: 25,),
              Text('Cette plate forme permet de mettre en relation tous les étudiants de l\'université de Kara' , 
              style: GoogleFonts.openSans(
                fontSize: 13,
                fontWeight: FontWeight.w800,
                color: Colors.black87
              ) ,),
              SizedBox(height: 06,),
               Text(' Trouver des services de base  ' , 
              style: GoogleFonts.inter(
                fontSize: 13,
                fontWeight: FontWeight.w800,
                color: Colors.black87
              ) ,), 
              ],
              ),
          ),
           SizedBox(height: 30,),

              GestureDetector(
                onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return InscriptionPage();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 33, 37, 243),
                      borderRadius: BorderRadius.circular(10)
                      ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Text('créer un compte' , style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                        )),
                    ),
                  ),
                ),
              ),

               SizedBox(height: 10,),

              GestureDetector(
                onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return COnnexion();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)
                      ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Text('Connexion' , style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                        )),
                    ),
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
