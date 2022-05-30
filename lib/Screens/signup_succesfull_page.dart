import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kapkap/Screens/login_page.dart';
import 'package:kapkap/constants.dart';

class SignupSuccesfullPage extends StatefulWidget {
  _SignupSuccesfullPageState createState() => _SignupSuccesfullPageState();
}

class _SignupSuccesfullPageState extends State<SignupSuccesfullPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => LoginPage(),
            ),
            (route) => false,
          );
          SystemNavigator.pop();
          return false;
        },
        child: Scaffold(
            body: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height * .4,
                width: MediaQuery.of(context).size.width,
                child: Image(
                  image: AssetImage("assets/logo.png"),
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Text(
                "SON 1 ADIM KALDI",
                style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .07,
              ),
              Text(
                "SMS İLE GELEN ŞİFREYİ GİR",
                style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              Container(
                  //height: MediaQuery.of(context).size.height * .1,
                  width: MediaQuery.of(context).size.width * .5,
                  decoration: BoxDecoration(
                      border: Border.all(color: mainColor),
                      borderRadius: BorderRadius.circular(70)),
                  child: TextFormField(
                    style: TextStyle(
                      color: mainColor,
                    ),
                    cursorColor: mainColor,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: InputBorder.none, hoverColor: mainColor),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Text("Kalan süre: 02:04"),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .08,
                width: MediaQuery.of(context).size.width * .35,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(mainColor)),
                  child: Text(
                    "ONAYLA",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  onPressed: () {
                    Get.to(LoginPage());
                  },
                ),
              ),
            ]),
          ),
        )));
  }
}
