import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "News/Fairs.dart";
import "articles/Articles.dart";
import "videos/Videos.dart";
class News extends StatelessWidget {
  News( {super.key});

  final List<Map<String,  dynamic >> items = [
    { "label":"Fairs","button":"assets/images/exposition.png",'page':Fairs()},
    {"label":"Articles about us","button":"assets/images/un-journal.png",'page':Articles()},
    {"label":"videos","button":"assets/images/video.png",'page':Videos()},
  ];



  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
          appBar: AppBar(title: Row(children: [
            Text("Neofrost  "),
            Text("News",
                style: TextStyle(fontSize: 24, color: Color(0xFFFF00FF)))
          ])),
          body:ListView.builder(
              shrinkWrap: true,

              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return
                  Card( shape: RoundedRectangleBorder(
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

                       // Container(width:40, margin: new EdgeInsets.symmetric(horizontal: 20.0),child:Image.asset(items[index]["button"])),
                        Container(child: Text(items[index]["label"], style: TextStyle(fontSize: 24,color:Color(0xFFFF00FF) )) )
                      ]

                      )
                  ) );
              }

          )
      );
  }
}