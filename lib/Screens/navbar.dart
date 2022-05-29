import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kapkap/Screens/add_food_page.dart';
import 'package:kapkap/Screens/home_page.dart';
import 'package:kapkap/Screens/profile_page.dart';

class NavbarRouter extends StatefulWidget {
  const NavbarRouter({Key? key}) : super(key: key);

  @override
  _NavbarRouterState createState() => _NavbarRouterState();
}

class _NavbarRouterState extends State<NavbarRouter> {
  int selectedIndex = 0;
  final List<Widget> pages = [
    HomePage(),
    ProfilePage(),
    AddFoodPage(),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent
            //color set to transperent or set your own color
            ));
    return Scaffold(
        body: IndexedStack(
          index: selectedIndex,
          children: pages,
        ),
        bottomNavigationBar: SizedBox(
          height: MediaQuery.of(context).size.height * .1,
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.food_bank,
                    size: MediaQuery.of(context).size.height * .052,
                  ),
                  label: "Anasayfa"),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.add,
                  size: MediaQuery.of(context).size.height * .052,
                ),
                label: "Yemek Ekle",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_rounded,
                  size: MediaQuery.of(context).size.height * .052,
                ),
                label: "Profil",
              ),
            ],
            backgroundColor: Colors.red[300],
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey[700],
            selectedFontSize: 12.0,
            unselectedFontSize: 9.0,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ));
  }
}
