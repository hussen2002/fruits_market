import 'package:flutter/material.dart';
import 'package:fruits_market/featuers/On%20Boarding/presention/widget/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  CustomPageView({this.current = 0,this.pageController});
  int current;
  PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        current = value;
      },
      children: [
        PageViewItem(
          image: 'assets/images/Capture.PNG',
          text: 'E Shopping',
          title:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
        ),
        PageViewItem(
          image: 'assets/images/Capture1.PNG',
          text: 'Delivery on the way',
          title:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
        ),
        PageViewItem(
          image: 'assets/images/Capture2.PNG',
          text: 'Delivery Arrived',
          title:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
        ),
      ],
    );
  }

  double currentPage() {
    return current.toDouble();
  }
}
