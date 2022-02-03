import 'package:flutter/material.dart';
import 'package:fruits_market/core/widgets/custom_button.dart';
import 'package:fruits_market/featuers/Auth/presentaion/pages/complete_information/widgets/complete_information_item.dart';

class CompleteInformationBody extends StatelessWidget {
  const CompleteInformationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 25,
        ),
        CompleteInformationItem(
          text: 'Enter your name',
          inputType: TextInputType.name,
        ),
        CompleteInformationItem(
          text: 'Enter your phone number',
          inputType: TextInputType.phone,
        ),
        CompleteInformationItem(
            text: 'Enter your address',
            maxLine: 5,
            inputType: TextInputType.streetAddress),
        SizedBox(
          height: 20,
        ),
        Align(
          child: SizedBox(
            width: 350,
            child: CustomGenearlButton(text: 'Login', onTap: () {}),
          ),
        ),
      ],
    );
  }
}
