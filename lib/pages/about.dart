import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map/flutter_map.dart';

class About extends StatelessWidget {
  About(
      {this.title,
        Key? key})
      : super(key: key);

  String? title;


  @override
  Widget build(BuildContext context) {
    return Flex(direction: Axis.vertical, // Horizontal layout
      children:[
        Card(
        color: Color(0xFF00FF),
         child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(width:40,margin: new EdgeInsets.symmetric(horizontal: 20.0), child:Image.asset("assets/images/creme-glacee.png")),
                  Column(children:[
                    Container(child: Text("Temporal flux", style: TextStyle(fontSize: 18,color:Color(0xFFE0E0E0) )) ) ,
                    Container(child: Text("8h00-17h00", style: TextStyle(fontSize: 18,color:Color(0xFFE0E0E0) )) )
                  ]
                  )
                ],
              ),
            ],
          ),
        ),


        Card(
          color: Color(0xFF00FF),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(width:40,margin: new EdgeInsets.symmetric(horizontal: 20.0), child:Image.asset("assets/images/marque-de-localisation.png")),
                  Column(children:[
                    Container(child: Text("Contact channel", style: TextStyle(fontSize: 18,color:Color(0xFFE0E0E0) )) ) ,
                    Container(child: Text("01 23 45 67 89", style: TextStyle(fontSize: 18,color:Color(0xFFE0E0E0) )) )                  ]
                  )
                ],
              ),
            ],
          ),
        ),

        Card(
          color: Color(0xFF00FF),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(width:40,margin: new EdgeInsets.symmetric(horizontal: 20.0), child:Image.asset("assets/images/creme-glacee.png")),
                  Column(children:[
                    Container(child: Text("Service zone", style: TextStyle(fontSize: 18,color:Color(0xFFE0E0E0) )) ) ,
                    Container(child: Text("1à rue de glace", style: TextStyle(fontSize: 18,color:Color(0xFFE0E0E0) )) )
                ]  )]
                ,
              ),
            ],
          ),
        ),


        Card(
          color: Color(0xFF00FF),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(width:40,margin: new EdgeInsets.symmetric(horizontal: 20.0), child:Image.asset("assets/images/creme-glacee.png")),
                  Column(children:[
                    Container(child: Text("Instagram", style: TextStyle(fontSize: 18,color:Color(0xFFE0E0E0) )) ) ,
                    Container(child: Text("instagram", style: TextStyle(fontSize: 18,color:Color(0xFFE0E0E0) )) )                  ]
                  )
                ],
              ),
            ],
          ),
        ),

        Card(
          color: Color(0xFF00FF),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(width:40,margin: new EdgeInsets.symmetric(horizontal: 20.0), child:Image.asset("assets/images/creme-glacee.png")),
                  Column(children:[
                    Container(child: Text("Facebook", style: TextStyle(fontSize: 18,color:Color(0xFFE0E0E0) )) ) ,
                    Container(child: Text("facebook", style: TextStyle(fontSize: 18,color:Color(0xFFE0E0E0) )) )                  ]
                  )
                ],
              ),
            ],
          ),
        ),


        Card(

          child: Container(
              height:400,
              child: FlutterMap(
            options: const MapOptions(
              initialZoom: 1.0,
              maxZoom: 50.0
            ),
            children: [
              TileLayer(
                urlTemplate:
                'https://www.openstreetmap.org/#map=19/-21.3386498/55.4758335',
                userAgentPackageName: 'com.example.app',
              ),
            ],
          )
          )
         ,
              )



      ]
    );
  }
}