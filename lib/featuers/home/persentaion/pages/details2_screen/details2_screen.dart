import 'package:flutter/material.dart';
import 'package:fruits_market/featuers/home/persentaion/widgets/body2_widget.dart';
import 'package:fruits_market/models/details.dart';
import 'package:hexcolor/hexcolor.dart';

class Details2Sreen extends StatelessWidget{
  final Details details2;

  Details2Sreen({
    required this.details2,
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
      body: Body2(details2: details2,),
    );
  }
}




