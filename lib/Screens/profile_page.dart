import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kapkap/Screens/login_page.dart';

import '../constants.dart';

class ProfilePage extends StatefulWidget {
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController adress = TextEditingController();
  TextEditingController tc = TextEditingController();
  TextEditingController iban = TextEditingController();

  @override
  void initState() {
    super.initState();
    adress.text = "adres mahallesi adres caddesi \n adres apartmanı no:0 kat:0";
    tc.text = "11111111111";
    iban.text = "TR1111111111111111";
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return false;
      },
      child: Scaffold(
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
                          top: MediaQuery.of(context).size.height * .06),
                      child: Column(
                        children: [
                          Text("Hoşgeldin Abdullah,",
                              style: TextStyle(color: Colors.white)),
                          Text("Profiline buradan ulaşabilirsin.",
                              style: TextStyle(color: Colors.white))
                        ],
                      )),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .2,
              width: MediaQuery.of(context).size.width * .3,
              child: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  backgroundImage: NetworkImage(
                      "https://i4.hurimg.com/i/hurriyet/75/750x0/5bb4a36d67b0a91240cf682e.jpg")),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                  Text(
                    "Adres: ",
                    style: TextStyle(
                        fontSize: 17,
                        color: mainColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * .1,
                      width: MediaQuery.of(context).size.width * .8,
                      decoration: BoxDecoration(
                          border: Border.all(color: mainColor),
                          borderRadius: BorderRadius.circular(70)),
                      child: TextFormField(
                        controller: adress,
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
              height: MediaQuery.of(context).size.height * .03,
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
                      width: MediaQuery.of(context).size.width * .8,
                      decoration: BoxDecoration(
                          border: Border.all(color: mainColor),
                          borderRadius: BorderRadius.circular(70)),
                      child: TextFormField(
                        controller: tc,
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
              height: MediaQuery.of(context).size.height * .03,
            ),
            Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                  Text(
                    "IBAN: ",
                    style: TextStyle(
                        fontSize: 17,
                        color: mainColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                      //height: MediaQuery.of(context).size.height * .1,
                      width: MediaQuery.of(context).size.width * .8,
                      decoration: BoxDecoration(
                          border: Border.all(color: mainColor),
                          borderRadius: BorderRadius.circular(70)),
                      child: TextFormField(
                        controller: iban,
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
                  "Kaydet",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
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
                          "Bu Hesabı Kapat",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        onPressed: () {},
                      ),
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
                          "Çıkış Yap",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        onPressed: () async {
                          await GetStorage().write('isLoggedIn', 'false');
                          await GetStorage().remove('type');
                          Get.to(LoginPage());
                        },
                      ),
                    )
                  ]),
            )
          ]),
        ),
      ),
    );
  }
}
