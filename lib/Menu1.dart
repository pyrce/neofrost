import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import "pages/dessert_tab_filter.dart";
import "pages/about.dart";

class Menu1 extends StatelessWidget {
  Menu1(
      {this.title,
        Key? key})
      : super(key: key);

  String? title;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
            style:ElevatedButton.styleFrom(backgroundColor:Color(0x1E1E1E),foregroundColor:Color(0xFF00FF) ),
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
              Text('Products',style:TextStyle(color:Color(0x1E1E1E)  ) )]

            )
        ),
        ElevatedButton(
            style:ElevatedButton.styleFrom(backgroundColor:Color(0x1E1E1E),foregroundColor:Color(0xFF00FF) ),
            onPressed: () {},
            child:Row( children:[

              Container(width:40, margin: new EdgeInsets.symmetric(horizontal: 20.0),child:Image.asset("assets/images/creme-glacee.png")),
              Text('Map',style:TextStyle(color:Color(0x1E1E1E)  ) )]

            )
        ),
        ElevatedButton(
            style:ElevatedButton.styleFrom(backgroundColor:Color(0x1E1E1E),foregroundColor:Color(0xFF00FF) ),
            onPressed: () {      Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) =>  About(),
                ));
            },
            child:Row( children:[

              Container(width:40,margin: new EdgeInsets.symmetric(horizontal: 20.0), child:Image.asset("assets/images/a-propos-de-nous.png")),
              Text('About us',style:TextStyle(color:Color(0x1E1E1E)  ) )]

            )
        ),
        ElevatedButton(
            style:ElevatedButton.styleFrom(backgroundColor:Color(0x1E1E1E),foregroundColor:Color(0xFF00FF) ),
            onPressed: () {},
            child:Row( children:[

              Container(width:40,margin: new EdgeInsets.symmetric(horizontal: 20.0), child:Image.asset("assets/images/creme-glacee.png")),
              Text('Contact',style:TextStyle(color:Color(0x1E1E1E)  ) )]

            )
        ),
        ElevatedButton(
            style:ElevatedButton.styleFrom(backgroundColor:Color(0x1E1E1E),foregroundColor:Color(0xFF00FF) ),
            onPressed: () {},
            child:Row( children:[

              Container(width:40,margin: new EdgeInsets.symmetric(horizontal: 20.0), child:Image.asset("assets/images/creme-glacee.png")),
              Text('CGU',style:TextStyle(color:Color(0x1E1E1E)  ))]

            )
        ),
        ElevatedButton(
            style:ElevatedButton.styleFrom(backgroundColor:Color(0x1E1E1E),foregroundColor:Color(0xFF00FF) ),
            onPressed: () {},
            child:Row( children:[

              Container(width:40,margin: new EdgeInsets.symmetric(horizontal: 20.0), child:Image.asset("assets/images/creme-glacee.png")),
              Text('News',style:TextStyle(color:Color(0x1E1E1E)  ) )]

            )
        )
      ],
    );
  }
}