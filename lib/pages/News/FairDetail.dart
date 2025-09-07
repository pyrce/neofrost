import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "Fair.dart";

class FairDetail extends StatelessWidget {
  FairDetail({super.key, this.fair});

  Fair? fair;

  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
          appBar: AppBar(title: Row(children: [
            Text("Neofrost  "),
            Text("Fairs",
                style: TextStyle(fontSize: 24, color: Color(0xFFFF00FF)))
          ])),
          body:Column(
              children:[
             Container(child:   Text(fair!.title,style: TextStyle(fontSize: 24,color:Color(0xFFFF00FF) ) ) ),
    Container(child: Text(fair!.detail,style: TextStyle(fontSize: 20,color:Color(0xFFFF00FF) ) ) )
              ]
          )
      );
  }

}