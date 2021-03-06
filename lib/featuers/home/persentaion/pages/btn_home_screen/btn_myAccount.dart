import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants/constants.dart';
import 'package:fruits_market/featuers/Auth/presentaion/pages/login/login_view.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class MyAccount extends StatefulWidget {
  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                //
                height: 300,
                width: 400,
                color: HexColor("#69A03A"),
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: new ExactAssetImage('assets/images/my.jpg'),
                //   )
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 67, right: 145, left: 145, bottom: 10),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        height: 85,
                        width: 85,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  new ExactAssetImage('assets/images/my.jpg'),
                            )),
                      ),
                    ),
                    Text(
                      "Hussen Ghabayen",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "hussen@gmail.com",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 336, bottom: 141.9, right: 18.9, top: 67),
                child: IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {},
                  color: Colors.white,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, top: 24),
            child: Row(
              children: [
                Icon(
                  Icons.shopping_cart,
                  color: HexColor("#69A03A"),
                  size: 30,
                ),
                SizedBox(
                  width: 15.6,
                ),
                Text(
                  "My Orders",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, top: 24),
            child: Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: HexColor("#69A03A"),
                  size: 30,
                ),
                SizedBox(
                  width: 15.6,
                ),
                Text(
                  "Favourites",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, top: 24),
            child: Row(
              children: [
                Icon(
                  Icons.settings,
                  color: HexColor("#69A03A"),
                  size: 30,
                ),
                SizedBox(
                  width: 15.6,
                ),
                Text(
                  "Setting",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, top: 24),
            child: Row(
              children: [
                Icon(
                  Icons.shopping_cart,
                  color: HexColor("#69A03A"),
                  size: 30,
                ),
                SizedBox(
                  width: 15.6,
                ),
                Text(
                  "My Cart",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, top: 24),
            child: Row(
              children: [
                Icon(
                  Icons.star_rate_outlined,
                  color: HexColor("#69A03A"),
                  size: 30,
                ),
                SizedBox(
                  width: 15.6,
                ),
                Text(
                  "Rate us",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, top: 24),
            child: Row(
              children: [
                Icon(
                  Icons.share,
                  color: HexColor("#69A03A"),
                  size: 30,
                ),
                SizedBox(
                  width: 15.6,
                ),
                Text(
                  "Refer a Friend",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, top: 24),
            child: Row(
              children: [
                Icon(
                  Icons.help,
                  color: HexColor("#69A03A"),
                  size: 30,
                ),
                SizedBox(
                  width: 15.6,
                ),
                Text(
                  "Help",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, top: 24),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.logout),
                  onPressed: () async {
                    FirebaseAuth logOut = FirebaseAuth.instance;
                    setState(() {
                    isSigned = false;
                    });
                    await logOut.signOut();
                    Get.to(() => LoginView(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.fade);
                        print(isSigned);
                  },
                  color: HexColor("#69A03A"),
                  iconSize: 30,
                ),
                SizedBox(
                  width: 15.6,
                ),
                Text(
                  "Log Out",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
