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

      children: [
        Row(children:[    Container(width:40, child:Image.asset("assets/images/lhorloge.png")),
          Column(children:[
            Text("Temporal flux",style:Theme.of(context).textTheme.titleLarge),Text("8h00-17h00",style:Theme.of(context).textTheme.titleLarge)
          ]
          )
        ]),

        Row(children:[    Container(width:40, child:Image.asset("assets/images/lien.png")),
          Column(children:[
            Text("Contact channel",style:Theme.of(context).textTheme.titleLarge),Text("01 23 45 67 89",style:Theme.of(context).textTheme.titleLarge)
          ]
          )
        ]),

        Row(children:[    Container(width:40, child:Image.asset("assets/images/marque-de-localisation.png")),
          Column(children:[
            Text("Service zone",style:Theme.of(context).textTheme.titleLarge),Text("10 rue de glace",style:Theme.of(context).textTheme.titleLarge)
          ]
          ),
        ]),
        Row(children:[    Container(width:40, child:Image.asset("assets/images/lien.png")),
          Column(children:[
            Text("Instagram",style:Theme.of(context).textTheme.titleLarge),Text("01 23 45 67 89",style:Theme.of(context).textTheme.titleLarge)
          ]
          )
        ])
      ],
    );
  }
}