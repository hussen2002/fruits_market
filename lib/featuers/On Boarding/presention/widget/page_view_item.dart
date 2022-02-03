import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    required this.image,
    required this.text,
    required this.title,
  });
  final String? image;
  final String? text;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image!),
        SizedBox(
          height: 15,
        ),
        Text(
          text!,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 300,
          child: Text(
            title!,
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
