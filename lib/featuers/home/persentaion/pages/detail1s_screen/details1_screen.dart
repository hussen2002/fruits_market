import 'package:flutter/material.dart';
import 'package:fruits_market/featuers/home/persentaion/widgets/body1_widget.dart';
import 'package:fruits_market/models/details.dart';
import 'package:hexcolor/hexcolor.dart';

class Details1Sreen extends StatelessWidget{
  final Details details;

  Details1Sreen({
     required this.details,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HexColor("#69A03A"),
        title: Text("DETAILS",
            style: TextStyle(fontSize: 20, fontFamily: "Poppins")),
      ),
      body: Body1(details: details,),
    );
  }
}




