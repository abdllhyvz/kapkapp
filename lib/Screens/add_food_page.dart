import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddFoodPage extends StatefulWidget {
  _AddFoodPageState createState() => _AddFoodPageState();
}

class _AddFoodPageState extends State<AddFoodPage> {
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
