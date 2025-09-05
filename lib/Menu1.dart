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

    Container(width:40, child:Image.asset("assets/images/creme-glacee.png")),
    Text('Products',style:Theme.of(context).textTheme.titleLarge )]

    )
    ),
      ElevatedButton(
          style:ElevatedButton.styleFrom(backgroundColor:Color(0x1E1E1E),foregroundColor:Color(0xFF00FF) ),
          onPressed: () {},
          child:Row( children:[

            Container(width:40, child:Image.asset("assets/images/creme-glacee.png")),
            Text('Map',style:Theme.of(context).textTheme.titleLarge )]

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

            Container(width:40, child:Image.asset("assets/images/a-propos-de-nous.png")),
            Text('About us',style:Theme.of(context).textTheme.titleLarge )]

          )
      ),
      ElevatedButton(
          style:ElevatedButton.styleFrom(backgroundColor:Color(0x1E1E1E),foregroundColor:Color(0xFF00FF) ),
          onPressed: () {},
          child:Row( children:[

            Container(width:40, child:Image.asset("assets/images/creme-glacee.png")),
            Text('Contact',style:Theme.of(context).textTheme.titleLarge )]

          )
      ),
      ElevatedButton(
          style:ElevatedButton.styleFrom(backgroundColor:Color(0x1E1E1E),foregroundColor:Color(0xFF00FF) ),
          onPressed: () {},
          child:Row( children:[

            Container(width:40, child:Image.asset("assets/images/creme-glacee.png")),
            Text('CGU',style:Theme.of(context).textTheme.titleLarge )]

          )
      ),
      ElevatedButton(
          style:ElevatedButton.styleFrom(backgroundColor:Color(0x1E1E1E),foregroundColor:Color(0xFF00FF) ),
          onPressed: () {},
          child:Row( children:[

            Container(width:40, child:Image.asset("assets/images/creme-glacee.png")),
            Text('News',style:Theme.of(context).textTheme.titleLarge )]

          )
      )
],
);
  }
}