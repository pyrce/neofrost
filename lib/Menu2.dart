import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import "pages/dessert_tab_filter.dart";
import "pages/about.dart";
import "pages/Contact.dart";

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
    //  {'label': 'Map', 'page':DessertTabFilter(),'button': 'assets/images/carte.png'},
      {'label': 'About Us','page':About(), 'button': 'assets/images/a-propos-de-nous.png'},
      {'label': 'Contact','page':ContactFormPage(), 'button': 'assets/images/poster.png'},
      {'label': 'Terms of sales', 'page':DessertTabFilter(),'button': 'assets/images/termes-et-conditions.png'},
      {'label': 'News','page':DessertTabFilter(), 'button': 'assets/images/termes-et-conditions.png'},
    ];


    return
       GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: items.map((item) {
              return Column(

                children: [
                  TextButton(
                   style:ElevatedButton.styleFrom( shadowColor: Colors.transparent.withOpacity(0.0)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => item['page']),
                      );
                    },
                    child:Container(width:140,padding: new EdgeInsets.symmetric(horizontal: 20.0), child:Image.asset(item['button'])),

                  ),

                 Container(child: Text(item['label']!, style: TextStyle(fontSize: 24,color:Color(0xFFFF00FF) )) ),
                ],
              );
            }).toList(),



    );
  }
}