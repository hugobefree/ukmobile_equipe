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
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children: [
          SizedBox(height: 50,),

        Container(
          height: 260,
          width: 265,
          child: SizedBox(child: Image.asset("image/p41.png"))),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35),
            child: 
              Column(
                children: [
              SizedBox(height: 20,),
              Text('Bienvenu sur la plateforme ' , style: GoogleFonts.satisfy(
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
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black87
              ) ,),
              SizedBox(height: 06,),
               Text(' possible avec Campus Connet ' , 
              style: GoogleFonts.satisfy(
                fontSize: 20,
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
