import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce/screens/profileScreen.dart';
import 'package:ecommerce/screens/wishListScreen.dart';
import 'package:ecommerce/screens/your_bag_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'category.dart';
import 'homepage.dart';




class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  Widget screen = const HomePage();
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: _page,
          height: 60.0,
          onTap: (page) {
            setState(() {
              _page = page;
              if (page == 0) {
                screen = const HomePage();
              }
              if (page == 1) {
                screen = const Category();
              }
              if (page == 2) {
                screen = const YOurBagScreen();
              }
              if (page == 3) {
                screen = const WishListScreen();
              }
              if (page == 4) {
                screen = const ProfileScreen();
              }
            });
          },
          backgroundColor: Colors.white,
          items: const <Widget>[
            Icon(Icons.home, size: 25),
            Icon(CupertinoIcons.square_grid_2x2, size: 25),
            Icon(CupertinoIcons.cart_fill, size: 50),
            Icon(CupertinoIcons.heart_fill, size: 25),
            Icon(Icons.person, size: 25),
          ],
          color: const Color(0xff1B434D),
          buttonBackgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          letIndexChange: (index) => true,
        ),
        body: screen);
  }
}
