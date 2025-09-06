import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import "pages/dessert_tab_filter.dart";
import "pages/about.dart";

class Menu2 extends StatelessWidget {
  Menu2(
      {this.title,
        Key? key})
      : super(key: key);

  String? title;


  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {'label': 'Products','page':DessertTabFilter(), 'button': 'assets/images/creme-glacee.png'},
      {'label': 'Map', 'page':DessertTabFilter(),'button': 'assets/images/carte.png'},
      {'label': 'About Us','page':About(), 'button': 'assets/images/a-propos-de-nous.png'},
      {'label': 'Contact','page':DessertTabFilter(), 'button': 'assets/images/poster.png'},
      {'label': 'CGU', 'page':DessertTabFilter(),'button': 'assets/images/termes-et-conditions.png'},
      {'label': 'News','page':DessertTabFilter(), 'button': 'assets/images/termes-et-conditions.png'},
    ];


    return MaterialApp(
      home: Scaffold(
       // appBar: AppBar(title: Text('Grille Navigation')),
        body:  GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: items.map((item) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                   style:ElevatedButton.styleFrom( shadowColor: Colors.transparent.withOpacity(0.0)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => item['page']),
                      );
                    },
                    child: Image.asset(item['button']!),
                  ),
                  SizedBox(height: 8),
                  Text(item['label']!, style: TextStyle(fontSize: 16)),
                ],
              );
            }).toList(),
          ),

      ),
    );
  }
}