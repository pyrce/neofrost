import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "Article.dart";
import "ArticlesDetail.dart";

class Articles extends StatelessWidget {
  Articles( {super.key});



  final List<Article> items = [
    Article("title1","a nice faire 2","01/01/1970"),
    Article("title2","a nice faire 2","01/01/1970"),
    Article("title3","a nice faire 2","01/01/1970"),
  ];



  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
          appBar: AppBar(title: Row(children: [
            Text("Neofrost  "),
            Text("Articles",
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
                            MaterialPageRoute<void>(
                              builder: (context) =>  ArticlesDetails(article:items[index]),
                            ));
                      },
                      child:Row( children:[

                        // Container(width:40, margin: new EdgeInsets.symmetric(horizontal: 20.0),child:Image.asset(items[index]["button"])),
                        Container(child: Text(items[index].title, style: TextStyle(fontSize: 24,color:Color(0xFFFF00FF) )  ))
                      ]

                      )
                  ) );
              }

          )
      );
  }
}