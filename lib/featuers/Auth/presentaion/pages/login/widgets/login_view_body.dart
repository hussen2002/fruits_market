import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants.dart';
import 'package:fruits_market/core/constants/constants.dart';
import 'package:fruits_market/featuers/Auth/data/repostries/auth_repo_impl.dart';
import 'package:fruits_market/featuers/Auth/presentaion/pages/complete_information/complete_information_view.dart';
import 'package:fruits_market/featuers/home/persentaion/pages/btn_home_screen/btn_myAccount.dart';
import 'package:fruits_market/featuers/home/persentaion/pages/home_page_screen.dart';
import 'package:get/get.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Spacer(
          flex: 1,
        ),
        Image.asset('assets/images/Capture3.PNG'),
        SizedBox(
          height: 15,
        ),
        Text(
          'Fruit Market',
          style: TextStyle(
              fontSize: 51, color: kMainColor, fontWeight: FontWeight.bold),
        ),
        Spacer(
          flex: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 50,
              width: 150,
              child: RaisedButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8)),
                onPressed: () async {
                  setState(() {
                  isSigned = true;
                  });
                  AuthRepoImpl loginGoogle = AuthRepoImpl();
                  await loginGoogle.loginWithGoogle();
                  Get.to(() => HomePageScreen(),
                      duration: Duration(milliseconds: 500),
                      transition: Transition.rightToLeft);
                      print(isSigned);
                },
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/download.png',
                      height: 20,
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text('Login with'),
                    Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: 150,
              child: RaisedButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8)),
                onPressed: () async {
                  setState(() {
                  isSigned = true;
                  });
                  AuthRepoImpl loginGoogle = AuthRepoImpl();
                  await loginGoogle.loginWithFacebook();
                  Get.to(() => HomePageScreen(),
                      duration: Duration(milliseconds: 500),
                      transition: Transition.rightToLeft);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.facebook,
                      color: Colors.blue,
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text('Login with'),
                    Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Spacer(
          flex: 1,
        ),
      ],
    );
  }
}
