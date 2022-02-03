import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants.dart';
import 'package:fruits_market/core/constants/constants.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/core/widgets/custom_button.dart';
import 'package:fruits_market/featuers/Auth/presentaion/pages/login/login_view.dart';
import 'package:fruits_market/featuers/On%20Boarding/presention/widget/custom_indicator.dart';
import 'package:fruits_market/featuers/On%20Boarding/presention/widget/custom_page_view.dart';
import 'package:fruits_market/featuers/home/persentaion/pages/btn_home_screen/btn_myAccount.dart';
import 'package:fruits_market/featuers/home/persentaion/pages/home_page_screen.dart';
import 'package:get/get.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({Key? key}) : super(key: key);

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  PageController? pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 18,
          left: 0,
          right: 0,
          child: CustomIndicator(
            current: pageController!.hasClients ? pageController!.page : 0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController!.page! < 1.1 ? true : false)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: GestureDetector(
              onTap: () {
                if (pageController!.page! < 2) {
                  pageController!.animateToPage(2,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                }
              },
              child: Text(
                'Skip',
                style: TextStyle(),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 10,
          child: CustomGenearlButton(
            onTap: () {
              if (pageController!.page! < 2) {
                pageController!.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn);
                  print('object');
              } else {
                  print(isSigned);
                if (isSigned == true) {
                  Get.to(() => HomePageScreen(),
                      transition: Transition.rightToLeft,
                      duration: Duration(milliseconds: 500));
                } else {
                  Get.to(() => LoginView(),
                      transition: Transition.rightToLeft,
                      duration: Duration(milliseconds: 500));
                }
              }
            },
            text: pageController!.hasClients
                ? (pageController!.page! < 1.1 ? 'Next' : 'Get Started')
                : ('Next'),
          ),
          left: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
        ),
      ],
    );
  }
}
