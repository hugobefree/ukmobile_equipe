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

      backgroundColor: Colors.grey[100],

      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
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
              //Container(
                
            //      child: SizedBox(child: Image.asset("image/google.jpg"))),
              const SizedBox(
                width: 5,
              ),
                const SizedBox(
                height: 15,
              ),
              Text(
                'INCRIPTION',
                style: GoogleFonts.openSans(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    color: Colors.black87),
              ),

               const SizedBox(
                height: 15,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45 ),

                child: Container(
                
                  color: Colors.white,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0 ),
                    child: TextFormField(
                      validator: (value) => value!.isEmpty? 'Entrer votre email': null,
                        onChanged: (value) => email = value,
                      decoration: InputDecoration(
                          hintText: 'email',
                      //    labelText: 'email',
                       //   labelStyle: TextStyle(color: Colors.black),
                          hintStyle: GoogleFonts.openSans(
                              color: const Color.fromARGB(255, 12, 12, 12),
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
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
        
              //créer un préfixe qui soit déroulable pour choisir le pays
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Builder(
                      builder: (BuildContext context) {
                        return TextFormField(
                          validator: (value) => value!.isEmpty? 'Entrer votre contact': null,
                        onChanged: (value) => contact = value,
                          decoration: InputDecoration(
                            hintText: 'contact',
                         //   labelText: 'contact',
                          //  labelStyle: TextStyle(color: Colors.black),
                            hintStyle: GoogleFonts.openSans(
                                color: Color.fromARGB(255, 12, 12, 12),
                                fontSize: 10,
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
              ),
        // c'est pour créer un textfiel pour les contact de pays
        
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
                      obscureText: true,
                      validator: (value) => value!.isEmpty? 'Entrer votre mot de passe': null,
                        onChanged: (value) => mot_de_pass= value,
                      decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.remove_red_eye,
                            color: Colors.black,
                            size: 10,
                          ),
                          hintText: 'mot de passe',
                        //  labelText: 'mot de passe',
                        //  labelStyle: TextStyle(color: Colors.black),
                          hintStyle: GoogleFonts.openSans(
                              color: Color.fromARGB(255, 12, 12, 12),
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.6))),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: TextFormField(
                      obscureText: true,
                      validator: (value) => confirmation_mot_de_pass!= mot_de_pass? ' mot de passe ne correspond pas': null,
                        onChanged: (value) => confirmation_mot_de_pass = value,
                      decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.remove_red_eye,
                            color: Colors.black,
                            size: 10,
                          ),
                          hintText: 'confirmer le mot de passe',
                          //labelText: 'confirmer le mot de passe',
                          //labelStyle: TextStyle(color: Colors.black),
                          hintStyle: GoogleFonts.openSans(
                              color: Color.fromARGB(255, 12, 12, 12),
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.6))),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Divider(
                    thickness: 15,
                  ),
                  Text('s\'inscrire autrement' ,style: TextStyle(color: Colors.black), ),

                  Divider(
                   thickness: 15,
                 ),
                ],
              ),
              const  SizedBox(height: 8),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset("image/op.png"),
                    )
                  ],
                ),
              ),
         
             const  SizedBox(height: 30),
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
                    Text(' j\'ai un compte ',
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
