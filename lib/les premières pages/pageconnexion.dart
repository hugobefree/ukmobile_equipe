import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukmoblie/acc%C3%A8sapli/pageacceuille.dart';
import 'package:ukmoblie/color%20model/model_couleur.dart';
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
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: _keyfrom,
            child: Column(
              children: [
                        const SizedBox(
                  height: 50,
                ),
                 Text(
                  'Campus Connect',
                  style: GoogleFonts.oswald(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                      color: Colors.black87),
                ),
                  const SizedBox(
                  height: 10,
                ),
        
                    SizedBox(
                              width: 31,
                              height: 35,
                              
                             // decoration: BoxDecoration(shape: BoxShape.circle  , color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset("image/user.png"),
                              ),
                            ),
                            const SizedBox(
                  height: 10,
                ),
                             Text(
                'Bienvenue veillez vous connecter!',
                style: GoogleFonts.openSans(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black26),
              ),

                               const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: TextFormField(
                        validator: (value) => value!.isEmpty? 'Entrer un email': null,
                        onChanged: (value) => email = value,
                        decoration: InputDecoration(
                            hintText: 'email',
                            hintStyle: GoogleFonts.openSans(
                                color: Color.fromARGB(255, 98, 92, 92),
                                fontSize: 10,
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
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: TextFormField(
                        validator: (value) => value!.isEmpty? 'Entrer votre mot de passe': null,
                        onChanged: (value) => motdepass = value,
                        obscureText: true,
                        decoration: InputDecoration(
                            suffixIcon: const Icon(
                              Icons.remove_red_eye,
                              color: Colors.black,
                              size: 15,
                            ),
                            hintText: 'mot de passe',
                            hintStyle: GoogleFonts.openSans(
                                color: Color.fromARGB(255, 91, 85, 85),
                                fontSize: 10,
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
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: GestureDetector(
                    onTap: () {
                      
                    },
                    child: Container(
                      alignment: Alignment.topRight,
                      child: Text('Mot de passe oublié?',
                                style: GoogleFonts.openSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: bleu)),
                    ),
                  ),
                ),
                 const SizedBox(
                  height: 20,
                ),

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
                          borderRadius: BorderRadius.circular(6)),
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Text('Me connecter',
                            style: GoogleFonts.openSans(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    ),
                  ),
                ),
           const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 85),
                  child: Divider(
                    
                  ),
                  
                ),
                Text('se connecter autrement' ,style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),  ),
        
               const Padding(
                 padding: EdgeInsets.symmetric(horizontal: 85),
                 child: Divider(
                   
                     ),
               ),
                const  SizedBox(height: 15),
        
                //connexion avec les boutton google et facebook
        
                //boutton google connect
        
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.white,
                    child: GestureDetector(
                      onTap: () {
                        
                      },
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 31,
                              height: 35,
                              
                             // decoration: BoxDecoration(shape: BoxShape.circle  , color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset("image/google.png"),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Text('se connecter  avec mon compte google',
                                style: GoogleFonts.openSans(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        
                const SizedBox(height: 10,),
        
                // boutton facebook connect
        
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.white,
                    child: GestureDetector(
                      onTap: () {
                        
                      },
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 37,
                              height: 35,
                              
                             // decoration: BoxDecoration(shape: BoxShape.circle  , color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset("image/facebook.png"),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Text('se connecter avec un compte facebook',
                                style: GoogleFonts.openSans(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
               
              
                const SizedBox(height: 12,),
                Padding(
                  padding:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(' je n\'ai pas de compte ', style: GoogleFonts.openSans(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                                     const  SizedBox(width: 4,),
                
                                       GestureDetector(
                                        onTap: () {
                                               Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return  InscriptionPage( );
                    }));
                                        },
                                         child: Text('m\'inscrire ici', style: GoogleFonts.openSans(
                                                                         fontSize: 12.5,
                                                                         fontWeight: FontWeight.bold,
                                                                         color: bleu)),
                                       ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
