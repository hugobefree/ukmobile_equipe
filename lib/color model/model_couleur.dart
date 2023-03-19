import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ici j'ai créé des modèle de couleur pour l'apk

Color principal_color = Color.fromARGB(255, 20, 38, 238);
Color second_color = Color.fromARGB(255, 66, 225, 26);
Color white = Colors.white;
Color gris = Color.fromARGB(255, 210, 209, 209).withOpacity(100);

TextStyle style1 =
    GoogleFonts.openSans(fontWeight: FontWeight.w600, color: white);
Color couleur1 = Colors.white;
TextStyle style2 = GoogleFonts.inter(fontWeight: FontWeight.w600, color: white);
Color couleur2 = Colors.black;
TextStyle style3 = GoogleFonts.inter(fontWeight: FontWeight.w600, color: white);
Color v = Colors.blue;

bool darkMode = false;

bool _iconbool = false;
IconData _iconlumiere = Icons.wb_sunny;
IconData _iconObscure = Icons.nights_stay;

Color verte = Color(0xff23CC00);
Color bleu = Color(0xff0083CC);
Color jaune = Color(0xff23CC00);
