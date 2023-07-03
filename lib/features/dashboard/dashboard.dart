import 'package:flutter/material.dart';
import 'package:mero_dokan/features/cart/presentation/cart_page.dart';
import 'package:mero_dokan/features/home/presentation/home_page.dart';
import 'package:mero_dokan/features/profile/presentation/profile_page.dart';
import 'package:mero_dokan/features/shop/presentation/shop_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currPage = 0;
  // List<String> pages = ["/home","/cart","/shop","/profile"];
  List<Widget> pages = const [
    HomePage(),
    ShopPage(),
    CartPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currPage],
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.redAccent,
          currentIndex: currPage,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              currPage = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shop_2,
                color: Colors.red,
              ),
              label: "Shop",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.red,
                ),
                label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
                label: "Profile"),
          ]),
    );
  }
}
