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
              Text('Bienvenu dans la plateforme ' , style: GoogleFonts.satisfy(
                fontSize: 35,
                fontWeight: FontWeight.w800,
                color: Colors.black87
              ) ,),

              SizedBox(height: 5,),

               Text('qui crée un réseau d \' étudiants !' , style: GoogleFonts.satisfy(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.black87
              ) ,)
              ,SizedBox(height: 25,),

              Text('Explorez, découvrez et connectez - vous , tout est ' , 
              style: GoogleFonts.satisfy(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black87
              ) ,),
              SizedBox(height: 06,),
               Text(' possible avec Campus Connet ' , 
              style: GoogleFonts.satisfy(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black87
              ) ,), 
              ],
              ),
          ),
           SizedBox(height: 100,),

              GestureDetector(
                onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return COnnexion();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: SizedBox(
                    height: 60,
                    width: 60,
                    
                    child: Image.asset("image/next.png")),
                ),
              ),
        ],
      ),
    );
  }
}
