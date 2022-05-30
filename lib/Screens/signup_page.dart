import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:kapkap/Screens/contract.dart';
import 'package:kapkap/constants.dart';

class SignupPage extends StatefulWidget {
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String filter = "Kullanıcı";
  var filterItems = ["Kullanıcı", "Yemekçi"];
  bool check = false;

  Widget ibanArea() {
    return Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Text(
        "IBAN: ",
        style: TextStyle(
            fontSize: 17, color: mainColor, fontWeight: FontWeight.bold),
      ),
      Container(
          //height: MediaQuery.of(context).size.height * .1,
          width: MediaQuery.of(context).size.width * .7,
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
          ))
    ]));
  }

  Widget adressField() {
    return Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Text(
        "Adres: ",
        style: TextStyle(
            fontSize: 17, color: mainColor, fontWeight: FontWeight.bold),
      ),
      Container(
          //height: MediaQuery.of(context).size.height * .1,
          width: MediaQuery.of(context).size.width * .7,
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
          ))
    ]));
  }

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
                            "Açmak istediğin hesap türünü\nseç ve kaydol.\nKapKapp'a Hoşgeldin!",
                            style: TextStyle(color: Colors.white)),
                      ],
                    )),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Container(
            child: DropdownButton(
                iconEnabledColor: mainColor,
                value: filter,
                items: filterItems.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: mainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    filter = newValue!;
                  });
                },
                underline: DropdownButtonHideUnderline(child: Container())),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                Text(
                  "İsim: ",
                  style: TextStyle(
                      fontSize: 17,
                      color: mainColor,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                    //height: MediaQuery.of(context).size.height * .1,
                    width: MediaQuery.of(context).size.width * .7,
                    decoration: BoxDecoration(
                        border: Border.all(color: mainColor),
                        borderRadius: BorderRadius.circular(70)),
                    child: TextFormField(
                      style: TextStyle(
                        color: mainColor,
                      ),
                      cursorColor: mainColor,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: InputBorder.none, hoverColor: mainColor),
                    ))
              ])),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                Text(
                  "Telefon: ",
                  style: TextStyle(
                      fontSize: 17,
                      color: mainColor,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                    //height: MediaQuery.of(context).size.height * .1,
                    width: MediaQuery.of(context).size.width * .7,
                    decoration: BoxDecoration(
                        border: Border.all(color: mainColor),
                        borderRadius: BorderRadius.circular(70)),
                    child: TextFormField(
                      style: TextStyle(
                        color: mainColor,
                      ),
                      cursorColor: mainColor,
                      keyboardType: TextInputType.phone,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: InputBorder.none, hoverColor: mainColor),
                    ))
              ])),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                Text(
                  "Mail: ",
                  style: TextStyle(
                      fontSize: 17,
                      color: mainColor,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                    //height: MediaQuery.of(context).size.height * .1,
                    width: MediaQuery.of(context).size.width * .7,
                    decoration: BoxDecoration(
                        border: Border.all(color: mainColor),
                        borderRadius: BorderRadius.circular(70)),
                    child: TextFormField(
                      style: TextStyle(
                        color: mainColor,
                      ),
                      cursorColor: mainColor,
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: InputBorder.none, hoverColor: mainColor),
                    ))
              ])),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                Text(
                  "TC: ",
                  style: TextStyle(
                      fontSize: 17,
                      color: mainColor,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                    //height: MediaQuery.of(context).size.height * .1,
                    width: MediaQuery.of(context).size.width * .7,
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
                    ))
              ])),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          if (filter == "Yemekçi") ibanArea(),
          if (filter == "Yemekçi")
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
          if (filter == "Yemekçi") adressField(),
          if (filter == "Yemekçi")
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
          CheckboxListTile(
            value: check,
            onChanged: (value) {
              setState(() {
                check = value!;
              });
            },
            title: Row(
              children: [
                GestureDetector(
                  child: Text(
                    "Kullanıcı sözleşmesini",
                    style: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 13),
                  ),
                  onTap: () {
                    Get.to(ContractPage());
                  },
                ),
                Text(
                  " okudum, onaylıyorum.",
                  style: TextStyle(fontSize: 13),
                )
              ],
            ),
          ),
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
                  backgroundColor: MaterialStateProperty.all<Color>(mainColor)),
              child: Text(
                "Kaydol",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .04,
          ),
        ]),
      ),
    );
  }
}
