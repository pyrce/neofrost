import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import "Menu1.dart";
import "Menu2.dart";
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
            scaffoldBackgroundColor: Color(0x0A0A0A),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
          fontFamily: GoogleFonts.orbitron().fontFamily,
        ),
        home: MyHomePage(),
      )
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(title:  Text('Neofrost')),
      body: Menu2(title:"home"),
    );
  }
}
