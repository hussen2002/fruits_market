import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/featuers/On%20Boarding/presention/on_boarding_view.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? fadingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    fadingAnimation =
        Tween<double>(begin: 0.2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);
    goToNextView();
  }

  goToNextView() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => OnBoardingView(), transition: Transition.fade);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        children: [
          Spacer(),
          AnimatedBuilder(
              animation: fadingAnimation!,
              builder: (context, child) {
                return Opacity(
                  opacity: fadingAnimation?.value,
                  child: Text(
                    'Fruit Market',
                    style: TextStyle(
                        fontSize: 51,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.bold),
                  ),
                );
              }),
          Spacer(),
          Image.asset(
            'assets/images/Multi Furit.jpg',
          ),
        ],
      ),
    );
  }
}
