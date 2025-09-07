import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';

class TermesOfSales extends StatelessWidget {
  const TermesOfSales({super.key});


  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
          appBar: AppBar(title: Row(children: [
            Text("Neofrost  ",   style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0)) ),
            Text("about us",
                style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0)) )
          ]),toolbarHeight: 100,backgroundColor:Color(0x0A0A0A))
          ,
          body:ListView(children:[
            Text("Terms and Conditions of Sale – Neofrost", style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0))),
            Text(""),
            Text("1. Purpose", style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0))),
            Text("These Terms and Conditions of Sale (T&Cs) govern sales made by [Your Business Name], seller of artisanal ice cream, registered under number [SIRET/Business ID], with its registered office at [full address].", style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0))),
            Text(""),
            Text("2. Products", style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0))),
            Text("	Our products include artisanal ice creams, sorbets, and related food items."+
           " •	Ingredients and allergens are communicated to the customer before purchase."+
  "  •	Any photos or descriptions of products are provided for illustrative purposes only."
                , style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0))),
            Text(""),
            Text("3. Prices", style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0))),
            Text("•	Prices are displayed in euros, inclusive of all taxes (TTC), and are clearly indicated at the point of sale."+
    "•	The seller reserves the right to modify prices at any time, while guaranteeing the customer the rate displayed at the time of purchase."
                , style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0))  ),
            Text("4. Orders", style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0))),
            Text("•	All orders are final and binding once accepted and paid for."+
            "•	As the products are perishable food items, they cannot be returned or exchanged (except in the case of proven non-compliance)."
                , style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0))),
Text("5. Payment" , style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0)) ),

            Text("•	Payment must be made in full at the time of purchase, by cash, credit card, or any other payment method accepted by the seller." , style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0)) ),
            Text("•	In the event of payment refusal, the sale will be automatically cancelled." , style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0)) ),
           Text(""),
            Text("6. Delivery / Collection" , style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0)) ),
            Text("•	Sales are primarily made at the seller’s point of sale or market stand." , style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0)) ),
            Text("•	In the event that delivery is offered, the terms (area, timeframes, fees) will be communicated to the customer when placing the order.t" , style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0)) ),
            Text(""),
            Text("7. Liability" , style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0)) ),
            Text("•	Customers are responsible for ensuring they do not have any contraindications (allergies, intolerances)." , style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0)) ),
            Text("•	The seller declines any liability for improper storage of the product after purchase." , style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0)) ),
            Text(""),
            Text("8. Personal Data" , style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0)) ),
            Text("If personal data is collected (loyalty program, online orders), it will only be used for the purposes of the commercial relationship and will never be shared with third parties without consent." , style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0)) ),
            Text("In accordance with GDPR, customers may request access to, correction of, or deletion of their data by contacting the seller." , style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0)) ),
            Text(""),
            Text("9. Governing Law and Disputes" , style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0)) ),
            Text("These T&Cs are governed by French law."+
            "In case of a dispute, the customer is invited to seek an amicable solution with the seller. If no agreement is reached, the competent courts will be those of the seller’s registered office jurisdiction", style: TextStyle(fontSize: 24, color: Color(0xFFE0E0E0)) )

          ])

      );
  }
}
