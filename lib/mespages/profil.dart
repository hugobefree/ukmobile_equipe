import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukmoblie/acc%C3%A8sapli/pageacceuille.dart';

class Profile_page extends StatefulWidget {
  //

  Profile_page({
    super.key,
    //
  });

  @override
  State<Profile_page> createState() => _Profile_pageState();

  
}

// ignore: camel_case_types
class _Profile_pageState extends State<Profile_page> {

  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                        color: Colors.black),
                  ),
                ],
              ),
            )),
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
                    Text('Profile'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Nom:'),
                SizedBox(
                  width: 80,
                ),
                Text('')
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Prénom:'),
                SizedBox(
                  width: 80,
                ),
                Text('')
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Filière:'),
                SizedBox(
                  width: 80,
                ),
                Text('')
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Département:'),
                SizedBox(
                  width: 80,
                ),
                Text('')
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Année d\'étude:'),
                SizedBox(
                  width: 80,
                ),
                Text('')
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
                        height: 600,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 191, 186, 186)),
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
                                      label: Text('nom'),
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
                                  controller: ContollerPrenom,
                                  decoration: const InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      border: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      label: Text('prenom'),
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
                                  controller: ContollerFiliere,
                                  decoration: const InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      border: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      label: Text('Filière'),
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
                                  decoration: const InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      border: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
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
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Profile_page();
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
                  );
                });
          },
          icon: Icon(Icons.edit)),
    );
  }

  
  TextEditingController ContollerNom = TextEditingController();
  TextEditingController ContollerPrenom = TextEditingController();
  TextEditingController ContollerFiliere = TextEditingController();
  TextEditingController ContollerDepartement = TextEditingController();
  TextEditingController ContollerAnnee = TextEditingController();

  
}
