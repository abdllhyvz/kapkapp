import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../constants.dart';

class ForgotPasswordPage extends StatefulWidget {
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent
            //color set to transperent or set your own color
            ));
    return Scaffold(
      body: Container(
        child: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height * .15,
            color: Color.fromARGB(255, 219, 121, 130),
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
                        top: MediaQuery.of(context).size.height * .035),
                    child: Column(
                      children: [
                        Text(
                            "Mail adresini girdikten sonra\nşifreni sıfırlaman için\nsana bir e-mail göndereceğiz.",
                            style: TextStyle(color: Colors.white)),
                      ],
                    )),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .2),
          Container(
              height: MediaQuery.of(context).size.height * .11,
              width: MediaQuery.of(context).size.width * .7,
              decoration: BoxDecoration(
                  border: Border.all(color: mainColor),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                style: TextStyle(color: mainColor, fontSize: 20),
                cursorColor: mainColor,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hoverColor: mainColor,
                    hintText: "Mail Adresini Gir",
                    hintStyle: TextStyle(color: mainColor, fontSize: 20)),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * .2,
          ),
          Container(
            height: MediaQuery.of(context).size.height * .1,
            width: MediaQuery.of(context).size.width * .35,
            child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(mainColor)),
                child: Text(
                  "GÖNDER",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "Şifreni sıfırlaman için mailini gönderdik.",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red[200],
                      textColor: Colors.white,
                      fontSize: 16.0);
                }),
          )
        ]),
      ),
    );
  }
}
