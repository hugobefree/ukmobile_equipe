import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukmoblie/acc%C3%A8sapli/pageacceuille.dart';
import 'package:ukmoblie/les%20premi%C3%A8res%20pages/pageconnexion.dart';

class InscriptionPage extends StatefulWidget {
  const InscriptionPage({
    super.key,
  });

  @override
  State<InscriptionPage> createState() => _InscriptionPageState();
}

class _InscriptionPageState extends State<InscriptionPage> {

  // je crée ici des variable que je vais utiliser dans mes textformfield

  String nom = '';
  String contact = '';
  String email = '';
  String mot_de_pass = '';
  String  confirmation_mot_de_pass = '';

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
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
                  SizedBox(
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
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    validator: (value) => value!.isEmpty? 'Entrer votre email': null,
                      onChanged: (value) => email = value,
                    decoration: InputDecoration(
                        hintText: 'email',
                        hintStyle: GoogleFonts.orbitron(
                            color: const Color.fromARGB(255, 12, 12, 12),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.6))),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
        
              //créer un préfixe qui soit déroulable pour choisir le pays
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Builder(
                    builder: (BuildContext context) {
                      return TextFormField(
                        validator: (value) => value!.isEmpty? 'Entrer votre contact': null,
                      onChanged: (value) => contact = value,
                        decoration: InputDecoration(
                          hintText: 'contact',
                          hintStyle: GoogleFonts.orbitron(
                              color: Color.fromARGB(255, 12, 12, 12),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.6)),
        
                          //
                        ),
                      );
                    },
                  ),
                ),
              ),
        // c'est pour créer un textfiel pour les contact de pays
        
              const SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    obscureText: true,
                    validator: (value) => value!.isEmpty? 'Entrer votre mot de passe': null,
                      onChanged: (value) => mot_de_pass= value,
                    decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.remove_red_eye,
                          color: Colors.black,
                          size: 30,
                        ),
                        hintText: 'mot de passe',
                        hintStyle: GoogleFonts.orbitron(
                            color: Color.fromARGB(255, 12, 12, 12),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.6))),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    obscureText: true,
                    validator: (value) => confirmation_mot_de_pass!= mot_de_pass? ' mot de passe ne correspond pas': null,
                      onChanged: (value) => confirmation_mot_de_pass = value,
                    decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.remove_red_eye,
                          color: Colors.black,
                          size: 30,
                        ),
                        hintText: 'confirmer le mot de passe',
                        hintStyle: GoogleFonts.orbitron(
                            color: Color.fromARGB(255, 12, 12, 12),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.6))),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'notre service nécessite le traitement de données personnelles (informations de contact).En continuant vous acceptez notre politique de confidentialité et nos conditions générales d\'utilisation.',
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if(_formkey.currentState!.validate()){
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
                        color: Color.fromARGB(255, 33, 37, 243),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Text('inscription',
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ),
                ),
              ),
        
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(' j\'ai pas de compte ',
                        style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const COnnexion();
                        }));
                      },
                      child: Text('me connecter ici',
                          style: GoogleFonts.inter(
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
