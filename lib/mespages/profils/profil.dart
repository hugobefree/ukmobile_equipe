import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukmoblie/acc%C3%A8sapli/pageacceuille.dart';
import 'package:ukmoblie/mespages/profils/profilclass.dart';

import '../../color model/model_couleur.dart';

class Profileclass {
  final String Nom;
  final String Prennom;
  final String Annee;
  final String Faculte;
  final String Departement;

  const Profileclass({
    required this.Nom,
    required this.Prennom,
    required this.Annee,
    required this.Faculte,
    required this.Departement,
  });

  factory Profileclass.empty() {
    return const Profileclass(
      Nom: '',
      Prennom: '',
      Annee: '',
      Faculte: '',
      Departement: '',);}}


class Profile_page extends StatefulWidget {
  
  final Profileclass person;

  Profile_page({
    super.key, required this.person,
  });

  @override
  State<Profile_page> createState() => _Profile_pageState();
}

// ignore: camel_case_types
class _Profile_pageState extends State<Profile_page> {
  late Profileclass _person;



  
   final ContollerNom = TextEditingController();
  final  ContollerPrenom = TextEditingController();
  final  ContollerFiliere = TextEditingController();
  final  ContollerDepartement = TextEditingController();
  final  ContollerAnnee = TextEditingController();
  final _FiliereList = ['FLESH', ' FSS', 'FDSP', 'FaSEG', 'FaST', 'ISMA'];
  String? _Filierecelctione;
  String? _Anneeselection;

  
   @override
  void initState() {
    super.initState();
    _person = widget.person;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode?Colors.black :Colors.white,
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
                    "image/uk1.jpg",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Mobile',
                    style: GoogleFonts.orbitron(
                        fontSize: 11,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),),],), )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              height: 250,
              width: 390,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(13)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    CircleAvatar(),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Profile'),],),),),),
        const  SizedBox(
            height: 25,
          ),
          Padding(
            
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Nom:' ,  style: GoogleFonts.openSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: darkMode?Colors.white :Colors.black),),
              const  SizedBox(
                  width: 80,
                ),
                Text('${_person.Nom}'  ,  style: GoogleFonts.openSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: darkMode?Colors.white :Colors.black),)],), ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Prénom:'  ,  style: GoogleFonts.openSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: darkMode?Colors.white :Colors.black),),
                SizedBox(
                  width: 80,
                ),
                Text('${_person.Prennom}'  ,  style: GoogleFonts.openSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color:darkMode?Colors.white : Colors.black),)],),),
        const  SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Filière:'  ,  style: GoogleFonts.openSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color:darkMode?Colors.white : Colors.black),),
                const SizedBox(
                  width: 80,
                ),
                Text('${_person.Faculte}'  ,  style: GoogleFonts.openSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: darkMode?Colors.white :Colors.black),)
              ],
            ),
          ),
        const  SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Département:'  ,  style: GoogleFonts.openSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: darkMode?Colors.white :Colors.black),),
                SizedBox(
                  width: 80,
                ),
                Text('${_person.Departement}'  ,  style: GoogleFonts.openSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: darkMode?Colors.white :Colors.black),)
              ],
            ),
          ),
       const   SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Année d\'étude:'  ,  style: GoogleFonts.openSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),),
                SizedBox(
                  width: 80,
                ),
                Text('${_person.Annee}'  ,  style: GoogleFonts.openSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),)
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: IconButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      child: Container(
                        height: 500,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 191, 186, 186)),
                        child: SingleChildScrollView(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'modifier votre profile',
                                  style: GoogleFonts.openSans(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 10),
                                  child: TextFormField(
                                    controller: ContollerNom,
                                    decoration: const InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black)),
                                        border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black)),
                                        label: Text('nom' , ),
                                        labelStyle:
                                            TextStyle(color: Colors.white)),
                                  ),
                                ),
                              const  SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 10),
                                  child: TextFormField(
                                    controller: ContollerPrenom,
                                    decoration: const InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black)),
                                        border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black)),
                                        label: Text('prenom' ),
                                        labelStyle:
                                            TextStyle(color: Colors.white)),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: TextFormField(
                                    controller: ContollerFiliere,
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black)),
                                        border: const OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black)),
                                        label: Text('Faculté'),
                                        suffixIcon: DropdownButton(
                                          value: _Filierecelctione,
                                          items: <String>[
                                            'FLESH',
                                            ' FSS',
                                            'FDSP',
                                            'FaSEG',
                                            'FaST',
                                            'ISMA'
                                          ].map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                          onChanged: (String? newValue) {

                                            // ici pour choisir la filière 
                                            setState(() {
                                              _Filierecelctione = newValue!;
                                              ContollerFiliere.text = newValue;
                                            });
                                          },
                                        ),
                                        labelStyle:
                                            TextStyle(color: Colors.white)),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 10),
                                  child: TextFormField(
                                    controller: ContollerDepartement,
                                    decoration: const InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black)),
                                        border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black)),
                                        label: Text('Département'),
                                        labelStyle:
                                            TextStyle(color: Colors.white)),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 10),
                                  child: TextFormField(
                                    controller: ContollerAnnee,
                                    decoration:  InputDecoration(
                                        enabledBorder: const OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black)),
                                        border: const OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black)),
                                                
                                            suffixIcon: DropdownButton(
                                          value: _Filierecelctione,
                                          items: <String>[
                                            '2022-2023',
                                            ' 2023-2024',
                                            '2025-2026',
                                            '2026-2027',
                                            '2027-2028',
                                            '2028-2029','2029-2030'
                                          ].map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              _Anneeselection = newValue!;
                                              ContollerAnnee.text = newValue;
                                            });
                                          },
                                        ),
                                          
                                        label: Text('année scolaire'),
                                        labelStyle:
                                            TextStyle(color: Colors.white)),
                                  ),
                                ),
                                // ignore: prefer_const_constructors
                                SizedBox(
                                  height: 50,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                     
                                    Profileclass profileclass =Profileclass(
                                      
                                        Nom : ContollerNom.text,
                                        Prennom: ContollerPrenom.text,
                                        Faculte: ContollerFiliere.text,
                                        Departement: ContollerDepartement.text,
                                        Annee: ContollerAnnee.text,
                                          
                                    );
                                          
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Profile_page( person: profileclass,);
                                      }));
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(9),
                                        color: Color.fromARGB(255, 13, 39, 207)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 15),
                                      child: Text(
                                        'Enrégistrer',
                                        style: GoogleFonts.inter(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                });
          },
          icon: Icon(Icons.edit , color: darkMode?Colors.white : Colors.black87)),
    );
  }
}


