import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants.dart';

class AboutPage extends StatefulWidget {
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent
            //color set to transperent or set your own color
            ));
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height * .15,
            color: mainColor,
            child: Row(
              children: [
                Image(
                  image: AssetImage("assets/logo.png"),
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.fitHeight,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .02,
                ),
                Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .06),
                    child: Column(
                      children: [
                        Text(
                            "KapKapp hakkında merak ettiklerini,\nburadan öğrenebilirsin.",
                            style: TextStyle(color: Colors.white)),
                      ],
                    )),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Container(
            padding:
                EdgeInsets.only(right: MediaQuery.of(context).size.width * .32),
            child: Text(
              "KapKapp Nedir?",
              style: TextStyle(
                  color: mainColor, fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Text("KapKapp, evde yemek yapmayı seven ve bol bol boş vakti olan insanların, yemeklerini diğer insanlarla paylaşmasını ve buradan kazanç elde etmesini sağlayan bir uygulamadır." +
              "KapKapp, hem kullanıcıların sağlıklı ve uygun fiyatlı yemek yemesine hem de kazanç elde etmesine olanak sağlamaktadır.")
        ]),
      ),
    );
  }
}
