import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class About extends StatelessWidget {
  About(
      {this.title,
        Key? key})
      : super(key: key);

  String? title;


  @override
  Widget build(BuildContext context) {
    return Flex(direction: Axis.vertical, // Horizontal layout
      children:[  Card(
        color: Color(0xFF00FF),
         child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(width:40,margin: new EdgeInsets.symmetric(horizontal: 20.0), child:Image.asset("assets/images/creme-glacee.png")),
                  Column(children:[
   Text("temporal flux",style:TextStyle(color:Color(0x1E1E1E) )) ,  Text("8h00-17h00",style:TextStyle(color:Color(0x1E1E1E)))
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
                    Text("ServiceZone",style:TextStyle(color:Color(0x1E1E1E))),  Text("10 rue de glace",style:TextStyle(color:Color(0x1E1E1E)))
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
                  Container(width:40,margin: new EdgeInsets.symmetric(horizontal: 20.0), child:Image.asset("assets/images/creme-glacee.png")),
                  Column(children:[
    Text("Contact channel",style:TextStyle(color:Color(0x1E1E1E))), Text("01 23 45 67 89",style:TextStyle(color:Color(0x1E1E1E)))

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
    Text("temporal flux",style:TextStyle(color:Color(0x1E1E1E))), Text("temporal flux",style:TextStyle(color:Color(0x1E1E1E)))
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
                  Container(width:40,margin: new EdgeInsets.symmetric(horizontal: 20.0), child:Image.asset("assets/images/creme-glacee.png")),
                  Column(children:[
    Text("temporal flux",style:TextStyle(color:Color(0x1E1E1E))), Text("temporal flux",style:TextStyle(color:Color(0x1E1E1E)))
                  ]
                  )
                ],
              ),
            ],
          ),
        )




      ]
    );
  }
}