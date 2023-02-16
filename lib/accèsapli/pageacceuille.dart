import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ukmoblie/mespages/profil.dart';
import 'package:ukmoblie/mespages/programme/pageprogrammNord.dart';
import 'package:ukmoblie/mespages/programme/programmeSud.dart';

class Page_acceuille extends StatefulWidget {
  const Page_acceuille({super.key});

  @override
  State<Page_acceuille> createState() => _Page_acceuilleState();
}

class _Page_acceuilleState extends State<Page_acceuille> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 33, 47, 243),
        centerTitle: true,
        elevation: 2,
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
        actions:  [
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(width: 15,),
               GestureDetector(
                onTap: () {
                  
                },
                 child: GestureDetector(
                  onTap: () {
                    
                  },
                   child: const Icon(
                    Icons.search,
                               ),
                 ),
               ),
               SizedBox(width: 15,),
                const Icon(
                Icons.notifications,
              ),
            ],
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          child: ListView(children: [
            DrawerHeader(
                child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Profile_page();
                  }));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(13)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      CircleAvatar(),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Profile')
                    ],
                  ),
                ),
              ),
            )),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Profile_page();
                  }));
              },
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 32, 205, 38),
                ),
                title: Text(
                  'Profile',
                  style: GoogleFonts.openSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Color.fromARGB(255, 205, 202, 32),
              ),
              title: Text(
                'Trouver une chambre',
                style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.work,
                color: Color.fromARGB(255, 32, 58, 205),
              ),
              title: Text(
                'Trouver un jod',
                style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.store,
                color: Color.fromARGB(255, 32, 205, 38),
              ),
              title: Text(
                'Market Place',
                style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.tv,
                color: Color.fromARGB(255, 32, 38, 205),
              ),
              title: Text(
                'visualiser les actualité',
                style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.telegram,
                color: Color.fromARGB(255, 32, 205, 38),
              ),
              title: Text(
                'Rejoingnez la cummunoté ',
                style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Color.fromARGB(255, 32, 55, 205),
              ),
              title: Text(
                'A propos de nous',
                style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
            )
          ]),
        ),
      ),
     bottomNavigationBar: Container(
      color: Color.fromARGB(255, 20, 67, 207),
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
         child: GNav(
          backgroundColor: Color.fromARGB(255, 20, 67, 207),
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Color.fromARGB(255, 18, 147, 23),
          padding: EdgeInsets.all(20),
          tabs: [
          GButton(icon: Icons.home,
          iconSize: 30,
          text: ('Acceuille' ),
           onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Page_acceuille();
                  }));
           },),
          GButton(icon: Icons.bus_alert,
           iconSize: 30,
           
            onPressed: (){},
           text: ('E-Ticket'),),
           
          GButton(icon: Icons.store,
           iconSize: 30,
           
            onPressed: (){},
           text: ('Market place'),),
          GButton(icon: Icons.messenger,
           iconSize: 30,
           
            onPressed: (){},
           text: ('Chate'),)
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
                                      color: Color.fromARGB(255, 26, 184, 31)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('Campus' ,  style: GoogleFonts.openSans(
                        fontSize: 13.3,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,)),
                                          Text('Nord' , style: GoogleFonts.openSans(
                        fontSize: 13.3,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,))
                                          
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(),
                                  Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Color.fromARGB(255, 26, 184, 31)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('Campus' ,  style: GoogleFonts.openSans(
                        fontSize: 13.3,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,)),
                                          Text('Sud' , style: GoogleFonts.openSans(
                        fontSize: 13.3,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,))
                                          
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
                width: 10,),

              Text(
                  'infos et ',
                  style: GoogleFonts.openSans(
                      fontSize: 13.3,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
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
                      color: Colors.black),
                ),
              ),
            ],
          ),
          const SizedBox(
                height: 9,),
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Image.asset(
                      "image/banier.png",
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 65,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Colors.yellow,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Image.asset(
                      "image/banier.png",
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
                          color: Colors.black),
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
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: [
                    Image.asset(
                      "image/banier.png",
                    ),
                    Image.asset(
                      "image/banier.png",
                    ),
                    Image.asset(
                      "image/banier.png",
                    )
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
      floatingActionButton:  AnimatedContainer(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(11)),
        duration: Duration(milliseconds: 600),
        child: IconButton(
          icon: Icon(
            Icons.calendar_today,
            color: Color.fromARGB(255, 12, 12, 12),
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Container(
                      
                      height: 200,
                      width: 150,
                      color: Color.fromARGB(255, 235, 234, 237),
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Text('Choisir le site universitaire',  style: GoogleFonts.openSans(
                      fontSize: 13.3,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 33, 54, 243)),),
                          SizedBox(height: 3,),
                          Text('pour avoir le programme' ,  style: GoogleFonts.openSans(
                      fontSize: 13.3,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 33, 79, 243)),),

                      SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PageprogrammeNord();
                  }));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Color.fromARGB(255, 26, 184, 31)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Campus',  style: GoogleFonts.openSans(
                      fontSize: 13.3,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,),),

                                        Text('Nord',  style: GoogleFonts.openSans(
                      fontSize: 13.3,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,))
                                        
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 30,),GestureDetector(
                                onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProgrammSud();
                  }));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Color.fromARGB(255, 26, 184, 31)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Campus' ,  style: GoogleFonts.openSans(
                      fontSize: 13.3,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,)),
                                        Text('Sud' , style: GoogleFonts.openSans(
                      fontSize: 13.3,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,))
                                        
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
      )
    );
  }
}
