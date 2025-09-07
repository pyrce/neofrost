import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import "pages/dessert_tab_filter.dart";
import "pages/about.dart";
import "pages/Contact.dart";
import "pages/CGU.dart";
import "pages/news.dart";
import "pages/News/Fairs.dart";


class Menu1 extends StatelessWidget {
  Menu1(
      {this.title,
        Key? key})
      : super(key: key);

  String? title;


  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
    {'label': 'Products','page':DessertTabFilter(), 'button': 'assets/images/creme-glacee.png'},
   // {'label': 'Map', 'page':About(),'button': 'assets/images/carte.png'},
    {'label': 'About Us','page':About(), 'button': 'assets/images/a-propos-de-nous.png'},
    {'label': 'Contact','page':ContactFormPage(), 'button': 'assets/images/poster.png'},
    {'label': 'CGU', 'page':TermesOfSales(),'button': 'assets/images/termes-et-conditions.png'},
    {'label': 'News','page':News(), 'button': 'assets/images/termes-et-conditions.png'},
  ];


    return
      Center(

          child: ListView.builder(
              shrinkWrap: true,

          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
          return
         Card(shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(30.0),
         ),child:  ElevatedButton(
              style:ElevatedButton.styleFrom( minimumSize: Size(100, 60),backgroundColor:Color(0xFF1E1E1E),foregroundColor:Color(0xFFFF00FF) ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => items[index]['page']),
                );
              },
              child:Row( children:[

                Container(width:40, margin: new EdgeInsets.symmetric(horizontal: 20.0),child:Image.asset(items[index]["button"])),
                  Container(child: Text(items[index]["label"], style: TextStyle(fontSize: 24,color:Color(0xFFFF00FF) )) )
              ]

              )
          ) );
          }

    )
    )


      /*Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing:15,
      children: [
        ElevatedButton(
            style:ElevatedButton.styleFrom( minimumSize: Size(100, 60),backgroundColor:Color(0xFF1E1E1E),foregroundColor:Color(0xFFFF00FF) ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) =>  DessertTabFilter(),
                ),
              );
            },
            child:Row( children:[

              Container(width:40, margin: new EdgeInsets.symmetric(horizontal: 20.0),child:Image.asset("assets/images/creme-glacee.png")),
              Container(child: Text("Products", style: TextStyle(fontSize: 24,color:Color(0xFFFF00FF) )) )
            ]

            )
        ),

        ElevatedButton(
            style:ElevatedButton.styleFrom(minimumSize: Size(100, 60),backgroundColor:Color(0xFF1E1E1E),foregroundColor:Color(0xFFFF00FF) ),
            onPressed: () {},
            child:Row( children:[

              Container(width:40, margin: new EdgeInsets.symmetric(horizontal: 20.0),child:Image.asset("assets/images/carte.png")),
              Container(child: Text("Map", style: TextStyle(fontSize: 24,color:Color(0xFFFF00FF) )) )]

            )
        ),

        ElevatedButton(
            style:ElevatedButton.styleFrom(minimumSize: Size(100, 60),backgroundColor:Color(0xFF1E1E1E),foregroundColor:Color(0xFF1E1E1E) ),
            onPressed: () {      Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) =>  About(),
                ));
            },
            child:Row( children:[

              Container(width:40,margin: new EdgeInsets.symmetric(horizontal: 20.0), child:Image.asset("assets/images/a-propos-de-nous.png")),
              Container(child: Text("About us", style: TextStyle(fontSize: 24,color:Color(0xFFFF00FF) )) )]

            )
        ),
        ElevatedButton(
            style:ElevatedButton.styleFrom(minimumSize: Size(100, 60),backgroundColor:Color(0xFF1E1E1E),foregroundColor:Color(0xFF1E1E1E) ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) =>  ContactFormPage(),
                ),
              );

            },
            child:Row( children:[

              Container(width:40,margin: new EdgeInsets.symmetric(horizontal: 20.0), child:Image.asset("assets/images/poster.png")),
              Container(child: Text("Contact", style: TextStyle(fontSize: 24,color:Color(0xFFFF00FF) )) )]

            )
        ),
        ElevatedButton(
            style:ElevatedButton.styleFrom(minimumSize: Size(100, 60),backgroundColor:Color(0xFF1E1E1E),foregroundColor:Color(0xFFFF00FF) ),
            onPressed: () {},
            child:Row( children:[

              Container(width:40,margin: new EdgeInsets.symmetric(horizontal: 20.0), child:Image.asset("assets/images/termes-et-conditions.png")),
              Container(child: Text("CGU", style: TextStyle(fontSize: 24,color:Color(0xFFFF00FF) )) )]

            )
        ),
        ElevatedButton(
            style:ElevatedButton.styleFrom(minimumSize: Size(100, 60),backgroundColor:Color(0xFF1E1E1E),foregroundColor:Color(0xFFFF00FF) ),
            onPressed: () {},
            child:Row( children:[

              Container(width:40,margin: new EdgeInsets.symmetric(horizontal: 20.0), child:Image.asset("assets/images/termes-et-conditions.png")),
              Container(child: Text("News", style: TextStyle(fontSize: 24,color:Color(0xFFFF00FF) )) )]

            )
        )
      ],
    )*/;
  }
}