import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kapkap/Screens/navbar.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String username = "", password = "";
  bool hidePassword = true;
  bool isHidden = true;

  Widget emailEntry() {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      //margin: EdgeInsets.symmetric(vertical: 6),
      //padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextField(
            onChanged: (String text) {
              username = text;
              username = username.trim();
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.6, color: Colors.red[200]!)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.6, color: Colors.red[700]!)),
              hintText: "Kullanıcı Adı",
            ),
          ),
        ],
      ),
    );
  }

  Widget passwordEntry(bool hide) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextField(
              onChanged: (String text) {
                password = text;
              },
              obscureText: isHidden,
              decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      isHidden = !isHidden;
                    });
                  },
                  child: Icon(isHidden
                      ? Icons.remove_red_eye_sharp
                      : Icons.remove_red_eye_outlined),
                ),
                hintText: "Şifre",
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 1.6, color: Colors.red[200]!)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 1.6, color: Colors.red[700]!)),
              ))
        ],
      ),
    );
  }

  Widget emailPasswordWidget() {
    return Column(
      children: <Widget>[
        emailEntry(),
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
        ),
        Stack(
          children: <Widget>[
            passwordEntry(hidePassword),
          ],
        )
      ],
    );
  }

  loginButton(BuildContext context) {
    return Container(
        width: 250,
        height: 50,
        child: Opacity(
            opacity: 0.88,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  shadowColor: Colors.grey),
              clipBehavior: Clip.antiAlias,
              onPressed: () {
                Get.to(const NavbarRouter());
              },
              child: Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Colors.red[200]!, Colors.red[500]!])),
                child: Container(
                  constraints: BoxConstraints(maxHeight: 300, minWidth: 50),
                  alignment: Alignment.center,
                  child: Text(
                    "Giriş Yap",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )));
  }

  Widget accountInfoPart() {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                child: Text(
                  "Şifremi unuttum",
                  style: TextStyle(
                      color: Colors.red[400],
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
              ),
              GestureDetector(
                child: Text("Kaydol",
                    style: TextStyle(
                        color: Colors.red[400],
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline)),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          GestureDetector(
            child: Text("kapkapp hakkında",
                style: TextStyle(
                    color: Colors.red[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .07,
          ),
          GestureDetector(
            child: Text("Kullanıcı Sözleşmesi",
                style: TextStyle(
                    color: Colors.red[400],
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline)),
          ),
        ],
      ),
    );
  }

  Widget logo() {
    return Container(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .65),
      child: Image(
        image: AssetImage("assets/logo.png"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SafeArea(
                child: Opacity(
              opacity: 0.25,
              child: Image(
                image: AssetImage("assets/homepagebackground.jpg"),
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.fitHeight,
              ),
            )),
            logo(),
            Container(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height * .3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  emailPasswordWidget(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),
                  if (!isKeyboard) loginButton(context),
                  if (!isKeyboard)
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .04,
                    ),
                  if (!isKeyboard) accountInfoPart()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
