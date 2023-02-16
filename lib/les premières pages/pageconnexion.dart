import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukmoblie/acc%C3%A8sapli/pageacceuille.dart';

class COnnexion extends StatefulWidget {
  const COnnexion({super.key});

  @override
  State<COnnexion> createState() => _COnnexionState();
}

class _COnnexionState extends State<COnnexion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
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
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                   
                    decoration: InputDecoration(
                        hintText: 'email',
                        hintStyle: GoogleFonts.orbitron(
                            color: Color.fromARGB(255, 12, 12, 12),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.6))),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),

              SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.blue,
                          size: 30,
                        ),
                        hintText: 'mot de passe',
                        hintStyle: GoogleFonts.orbitron(
                            color: Color.fromARGB(255, 12, 12, 12),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.6))),
                  ),
                ),
              ),
              SizedBox(height: 30),
               GestureDetector(
                onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Page_acceuille();
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