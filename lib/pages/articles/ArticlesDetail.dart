import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "Article.dart";

class ArticlesDetails extends StatelessWidget {
  ArticlesDetails({super.key, this.article});

  Article? article;

  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
          appBar: AppBar(title: Row(children: [
            Text("Neofrost  ", style: TextStyle(fontSize: 24, color: Color(0xFFFF00FF))),
            Text("Article detail",
                style: TextStyle(fontSize: 24, color: Color(0xFFFF00FF)) )
          ]),
              toolbarHeight: 100,backgroundColor:Color(0x0A0A0A)
          ),
          body:Column(
              children:[
             Container(child:   Text(article!.title,style: TextStyle(fontSize: 24,color:Color(0xFFFF00FF) ) ) ),
    Container(child: Text(article!.detail,style: TextStyle(fontSize: 20,color:Color(0xFFFF00FF) ) ) )
              ]
          )
      );
  }

}