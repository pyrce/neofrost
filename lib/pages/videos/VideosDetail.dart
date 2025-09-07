import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "Video.dart";

class VideosDetail extends StatelessWidget {
  VideosDetail({super.key, this.video});

  Video? video;

  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
          appBar: AppBar(title: Row(children: [
            Text("Neofrost  ",  style: TextStyle(fontSize: 24, color: Color(0xFFFF00FF))),
            Text("Videos",
                style: TextStyle(fontSize: 24, color: Color(0xFFFF00FF)) )
          ]),toolbarHeight: 100,backgroundColor:Color(0x0A0A0A)
          ),
          body:Column(
              children:[
             Container(child:   Text(video!.title,style: TextStyle(fontSize: 24,color:Color(0xFFFF00FF) ) ) ),
    Container(child: Text(video!.detail,style: TextStyle(fontSize: 20,color:Color(0xFFFF00FF) ) ) )
              ]
          )
      );
  }

}