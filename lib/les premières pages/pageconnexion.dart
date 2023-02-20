import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukmoblie/acc%C3%A8sapli/pageacceuille.dart';
import 'package:ukmoblie/les%20premi%C3%A8res%20pages/pageinscription.dart';

class COnnexion extends StatefulWidget {
  const COnnexion({super.key});

  @override
  State<COnnexion> createState() => _COnnexionState();
}

class _COnnexionState extends State<COnnexion> {

  // je cré des variable et une clé pour la connexion afin de m'assurer que 'lutilisateur mettra tjrs les infos requis
  String email = '';
  String motdepass = '';

  final _keyfrom = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _keyfrom,
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 200,
                      width: 200,
                      child: SizedBox(child: Image.asset("image/uk.jpg"))),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Mobile',
                    style: GoogleFonts.orbitron(
                        fontSize: 35,
                        fontWeight: FontWeight.w800,
                        color: Colors.black87),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      validator: (value) => value!.isEmpty? 'Entrer un email': null,
                      onChanged: (value) => email = value,
                      decoration: InputDecoration(
                          hintText: 'email',
                          hintStyle: GoogleFonts.orbitron(
                              color: const Color.fromARGB(255, 12, 12, 12),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                              enabledBorder: const OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black)),
                          focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.6))),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      validator: (value) => value!.isEmpty? 'Entrer votre mot de passe': null,
                      onChanged: (value) => motdepass = value,
                      obscureText: true,
                      decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.remove_red_eye,
                            color: Colors.black,
                            size: 30,
                          ),
                          hintText: 'mot de passe',
                          hintStyle: GoogleFonts.orbitron(
                              color: const Color.fromARGB(255, 12, 12, 12),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                              enabledBorder: const OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black)),
                          focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.6))),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {

                  // ici on verifie si l'utilisateur à entré les bonnes information ou pas
                  
                setState(() {
                    if(_keyfrom.currentState!.validate()){
                     Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Page_acceuille();
                  }));
                  };
                });
                 
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 33, 37, 243),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Text('Connexion',
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ),
                ),
              ),
      
              const SizedBox(height: 18,),
              Padding(
                padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(' je n\'ai pas de compte ', style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                                   const  SizedBox(width: 4,),
              
                                     GestureDetector(
                                      onTap: () {
                                             Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  InscriptionPage( );
                  }));
                                      },
                                       child: Text('m\'inscrire ici', style: GoogleFonts.inter(
                                                                       fontSize: 13.5,
                                                                       fontWeight: FontWeight.bold,
                                                                       color: Colors.blue)),
                                     ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
