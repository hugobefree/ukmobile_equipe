import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ukmoblie/color%20model/model_couleur.dart';
import 'package:ukmoblie/les%20premi%C3%A8res%20pages/pageconnexion.dart';
import 'package:ukmoblie/mespages/Eticketpage.dart';
import 'package:ukmoblie/mespages/chambrepage/pageImmobilier.dart';
import 'package:ukmoblie/mespages/pagejob.dart';
import 'package:ukmoblie/mespages/pagemarket.dart';
import 'package:ukmoblie/mespages/profils/profil.dart';
import 'package:ukmoblie/mespages/programme/pageprogrammNord.dart';
import 'package:ukmoblie/mespages/programme/programmeSud.dart';
import 'package:ukmoblie/mespages/support_page/contacter_support.dart';

import '../main.dart';

class telegrambutton {
  final String CanalName;
  final String Lientelegram;

  const telegrambutton({required this.CanalName, required this.Lientelegram});
}

class Page_acceuille extends StatefulWidget {
  const Page_acceuille({
    super.key,
  });

  @override
  State<Page_acceuille> createState() => _Page_acceuilleState();
}

class _Page_acceuilleState extends State<Page_acceuille> {
  bool _iconbool = false;
  IconData _iconlumiere = Icons.wb_sunny;
  IconData _iconObscure = Icons.nights_stay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkMode ? Colors.black : Colors.grey[100],
        appBar: AppBar(
          backgroundColor: principal_color,
          centerTitle: true,
          elevation: 2,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                  child: Image.asset(
                    "image/p4112.png",
                    fit: BoxFit.cover,
                  ),
                )),
          ),
          actions: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {},
                  child: GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.search,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                const Icon(
                  Icons.notifications,
                ),
              ],
            )
          ],
        ),
        drawer: Drawer(
          child: Container(
            color: darkMode ? Colors.black : Colors.white,
            child: ListView(children: [
              DrawerHeader(
                  child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Profile_page(
                      person: Profileclass.empty(),
                    );
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: darkMode ? Colors.white : principal_color,
                      borderRadius: BorderRadius.circular(13)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                              color: darkMode ? Colors.black : Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              )),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Profile_page(
                      person: Profileclass.empty(),
                    );
                  }));
                },
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: second_color,
                  ),
                  title: Text(
                    'Profile',
                    style: GoogleFonts.openSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: darkMode ? Colors.white : Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Immobilier();
                  }));
                },
                child: ListTile(
                  leading: const Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 205, 202, 32),
                  ),
                  title: Text(
                    'Trouver une chambre',
                    style: GoogleFonts.openSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: darkMode ? Colors.white : Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Job_Page();
                  }));
                },
                child: ListTile(
                  leading: Icon(
                    Icons.work,
                    color: Color.fromARGB(255, 32, 58, 205),
                  ),
                  title: Text(
                    'Trouver un job',
                    style: GoogleFonts.openSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: darkMode ? Colors.white : Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Marketplace();
                  }));
                },
                child: ListTile(
                  leading: Icon(
                    Icons.store,
                    color: Color.fromARGB(255, 32, 205, 38),
                  ),
                  title: Text(
                    'Market Place',
                    style: GoogleFonts.openSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: darkMode ? Colors.white : Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              ListTile(
                leading: Icon(
                  Icons.tv,
                  color: Color.fromARGB(255, 32, 38, 205),
                ),
                title: Text(
                  'visualiser les actualité',
                  style: GoogleFonts.openSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w800,
                      color: darkMode ? Colors.white : Colors.black),
                ),
              ),
              const SizedBox(
                height: 6,
              ),

              // ici j'ai créé un boutton pour rejoindre un canal télégram qui sera le notre
              GestureDetector(
                onTap: () {},
                child: ListTile(
                  leading: const Icon(
                    Icons.telegram,
                    color: Color.fromARGB(255, 32, 205, 38),
                  ),
                  title: Text(
                    'Rejoingnez la cummunoté ',
                    style: GoogleFonts.openSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: darkMode ? Colors.white : Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              ListTile(
                leading: const Icon(
                  Icons.question_answer,
                  color: Color.fromARGB(255, 32, 55, 205),
                ),
                title: Text(
                  'A propos de nous',
                  style: GoogleFonts.openSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w800,
                      color: darkMode ? Colors.white : Colors.black),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Contacter_support();
                  }));
                },
                child: ListTile(
                  leading: const Icon(
                    Icons.help,
                    color: Color.fromARGB(255, 32, 205, 38),
                  ),
                  title: Text(
                    'Aide',
                    style: GoogleFonts.openSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: darkMode ? Colors.white : Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),

              GestureDetector(
                onTap: () {
                  setState(() {
                    darkMode = !darkMode;
                    _iconbool = !_iconbool;
                  });
                },
                child: ListTile(
                  leading: IconButton(
                    onPressed: () {
                      setState(() {
                        darkMode = !darkMode;
                        _iconbool = !_iconbool;
                      });
                    },
                    icon: Icon(_iconbool ? _iconObscure : _iconlumiere),
                    color: darkMode
                        ? Colors.white
                        : Color.fromARGB(255, 247, 188, 13),
                  ),
                  title: Text(
                    'Darck thême ',
                    style: GoogleFonts.openSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: darkMode
                            ? Colors.white
                            : Color.fromARGB(255, 18, 18, 17)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  FirebaseAuth.instance.signOut().then((value) {
                      Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const COnnexion();
                        }));
                  });
                },
                child: ListTile(
                  leading: const Icon(
                    Icons.logout,
                    color: Color.fromARGB(255, 32, 205, 38),
                  ),
                  title: Text(
                    'Déconecter',
                    style: GoogleFonts.openSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: darkMode ? Colors.white : Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
            ]),
          ),
        ),
        bottomNavigationBar: Container(
          color: Color.fromARGB(255, 20, 67, 207),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: GNav(
                backgroundColor: Color.fromARGB(255, 20, 67, 207),
                color: Colors.white,
                activeColor: Colors.white,
                tabBackgroundColor: Color.fromARGB(255, 18, 147, 23),
                padding: EdgeInsets.all(20),
                tabs: [
                  GButton(
                    icon: Icons.home,
                    iconSize: 30,
                    text: ('Acceuille'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Page_acceuille();
                      }));
                    },
                  ),
                  GButton(
                    icon: Icons.airplane_ticket,
                    iconSize: 30,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Eticket();
                      }));
                    },
                    text: ('E-Ticket'),
                  ),
                  GButton(
                    icon: Icons.store,
                    iconSize: 30,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Marketplace();
                      }));
                    },
                    text: ('Market place'),
                  ),
                  GButton(
                    icon: Icons.messenger,
                    iconSize: 30,
                    onPressed: () {},
                    text: ('Chate'),
                  )
                ]),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 160,
              width: 350,
              decoration: const BoxDecoration(),
              child: Expanded(
                child: PageView(
                  children: [
                    Container(
                      width: 400,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color.fromARGB(255, 26, 184, 31)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Campus',
                                style: GoogleFonts.openSans(
                                  fontSize: 13.3,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                )),
                            Text('Nord',
                                style: GoogleFonts.openSans(
                                  fontSize: 13.3,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                    ),
                    Container(),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color.fromARGB(255, 26, 184, 31)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Campus',
                                style: GoogleFonts.openSans(
                                  fontSize: 13.3,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                )),
                            Text('Sud',
                                style: GoogleFonts.openSans(
                                  fontSize: 13.3,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'infos et ',
                  style: GoogleFonts.openSans(
                      fontSize: 13.3,
                      fontWeight: FontWeight.w800,
                      color: darkMode ? Colors.white : Colors.black),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Annonces',
                    style: GoogleFonts.openSans(
                        fontSize: 13.3,
                        fontWeight: FontWeight.w800,
                        color: darkMode ? Colors.white : Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    height: 65,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.yellow,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: Image.asset(
                        "image/p41.png",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 65,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Color.fromARGB(255, 245, 244, 241),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: Image.asset(
                        "image/p41.png",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'oportunuité ',
                  style: GoogleFonts.openSans(
                      fontSize: 13.3,
                      fontWeight: FontWeight.w800,
                      color: darkMode ? Colors.white : Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 195,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Color.fromARGB(255, 233, 232, 222),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'oportunuité 1',
                            style: GoogleFonts.openSans(
                                fontSize: 12.5,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'oportunuité 2',
                            style: GoogleFonts.openSans(
                                fontSize: 12.5,
                                fontWeight: FontWeight.w900,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'oportunuité 3',
                            style: GoogleFonts.openSans(
                                fontSize: 12.5,
                                fontWeight: FontWeight.w900,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'oportunuité 1',
                            style: GoogleFonts.openSans(
                                fontSize: 12.5,
                                fontWeight: FontWeight.w900,
                                color: Colors.blue),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'oportunuité 1',
                            style: GoogleFonts.openSans(
                                fontSize: 12.5,
                                fontWeight: FontWeight.w900,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'oportunuité 1',
                            style: GoogleFonts.openSans(
                                fontSize: 12.5,
                                fontWeight: FontWeight.w900,
                                color: Colors.red),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'oportunuité 1',
                            style: GoogleFonts.openSans(
                                fontSize: 12.5,
                                fontWeight: FontWeight.w900,
                                color: Colors.amber),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'oportunuité 1',
                            style: GoogleFonts.openSans(
                                fontSize: 12.5,
                                fontWeight: FontWeight.w900,
                                color: Colors.purple),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'oportunuité 1',
                            style: GoogleFonts.openSans(
                                fontSize: 12.5,
                                fontWeight: FontWeight.w900,
                                color: Colors.red),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'oportunuité 1',
                            style: GoogleFonts.openSans(
                                fontSize: 12.5,
                                fontWeight: FontWeight.w900,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
          ],
        ),
        floatingActionButton: AnimatedContainer(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(11)),
          duration: const Duration(milliseconds: 600),
          child: Container(
            decoration: BoxDecoration(
                color: darkMode ? Colors.blue : second_color,
                borderRadius: BorderRadius.circular(8.9)),
            child: IconButton(
              icon: Icon(
                Icons.calendar_today,
                color: darkMode
                    ? principal_color
                    : Color.fromARGB(255, 12, 12, 12),
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          height: 200,
                          width: 150,
                          color: darkMode
                              ? Colors.grey
                              : Color.fromARGB(255, 235, 234, 237),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Choisir le site universitaire',
                                style: GoogleFonts.openSans(
                                    fontSize: 13.3,
                                    fontWeight: FontWeight.w800,
                                    color: Color.fromARGB(255, 33, 54, 243)),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'pour avoir le programme',
                                style: GoogleFonts.openSans(
                                    fontSize: 13.3,
                                    fontWeight: FontWeight.w800,
                                    color: Color.fromARGB(255, 33, 79, 243)),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return PageprogrammeNord();
                                      }));
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          color:
                                              Color.fromARGB(255, 26, 184, 31)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Campus',
                                              style: GoogleFonts.openSans(
                                                fontSize: 13.3,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text('Nord',
                                                style: GoogleFonts.openSans(
                                                  fontSize: 13.3,
                                                  fontWeight: FontWeight.w800,
                                                  color: Colors.white,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return ProgrammSud();
                                      }));
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          color:
                                              Color.fromARGB(255, 26, 184, 31)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text('Campus',
                                                style: GoogleFonts.openSans(
                                                  fontSize: 13.3,
                                                  fontWeight: FontWeight.w800,
                                                  color: Colors.white,
                                                )),
                                            Text('Sud',
                                                style: GoogleFonts.openSans(
                                                  fontSize: 13.3,
                                                  fontWeight: FontWeight.w800,
                                                  color: Colors.white,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
            ),
          ),
        ));
  }
}
