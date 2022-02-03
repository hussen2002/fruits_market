import 'package:flutter/material.dart';

class CompleteInformationItem extends StatelessWidget {
  CompleteInformationItem(
      {required this.text,
      this.maxLine = 1,
      this.onChang,
      this.onSave,
      this.inputType});
  final String text;
  final int? maxLine;
  var inputType;
  var onChang;
  var onSave;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          alignment: AlignmentDirectional.bottomStart,
          height: 50,
          width: double.infinity,
          child: Text(
            text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: TextFormField(
            keyboardType: inputType,
            onChanged: onChang,
            maxLines: maxLine,
            onSaved: onSave,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.transparent,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Color(0xffCCCCCC))),
            ),
          ),
        ),
      ],
    );
  }
}
