import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kapkap/Screens/add_food_page.dart';
import 'package:kapkap/Screens/datas_page.dart';
import 'package:kapkap/Screens/home_page.dart';
import 'package:kapkap/Screens/profile_page.dart';

import 'basket_page.dart';
import 'menu_page.dart';
import 'orders_page.dart';

class NavbarRouter extends StatefulWidget {
  const NavbarRouter({Key? key}) : super(key: key);

  @override
  _NavbarRouterState createState() => _NavbarRouterState();
}

class _NavbarRouterState extends State<NavbarRouter> {
  int selectedIndex = 0;
  var type = GetStorage().read('type');
  final List<Widget> yemekciPages = [
    MenuPage(),
    AddFoodPage(),
    OrdersPage(),
    DatasPage(),
    ProfilePage(),
  ];
  final List<Widget> musteriPages = [
    HomePage(),
    BasketPage(),
    ProfilePage(),
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
          children: type == "yemekci" ? yemekciPages : musteriPages,
        ),
        bottomNavigationBar: SizedBox(
          height: MediaQuery.of(context).size.height * .1,
          child: BottomNavigationBar(
            items: type == "yemekci"
                ? <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.restaurant_menu,
                          size: MediaQuery.of(context).size.height * .052,
                        ),
                        label: "Menüm"),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.add,
                        size: MediaQuery.of(context).size.height * .052,
                      ),
                      label: "Yemek Ekle",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.border_color,
                        size: MediaQuery.of(context).size.height * .052,
                      ),
                      label: "Siparişlerim",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.data_exploration,
                        size: MediaQuery.of(context).size.height * .052,
                      ),
                      label: "Verilerim",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.account_circle_rounded,
                        size: MediaQuery.of(context).size.height * .052,
                      ),
                      label: "Profil",
                    ),
                  ]
                : <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.food_bank,
                          size: MediaQuery.of(context).size.height * .052,
                        ),
                        label: "Anasayfa"),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.shopping_basket,
                        size: MediaQuery.of(context).size.height * .052,
                      ),
                      label: "Sepet",
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
