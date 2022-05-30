import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BasketPage extends StatefulWidget {
  _BasketPageState createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return false;
      },
      child: Scaffold(),
    );
  }
}
