import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kapkap/Screens/about_page.dart';
import 'package:kapkap/Screens/contract.dart';
import 'package:kapkap/Screens/forgot_password_page.dart';
import 'package:kapkap/Screens/navbar.dart';
import 'package:kapkap/Screens/signup_page.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "", password = "";
  bool hidePassword = true;
  bool isHidden = true;
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

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
            controller: emailController,
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
              controller: passwordController,
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
                if (emailController.text.isEmpty ||
                    passwordController.text.isEmpty) {
                  Fluttertoast.showToast(
                      msg: "Lütfen tüm alanları doldurun.",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red[200],
                      textColor: Colors.white,
                      fontSize: 16.0);
                } else if (emailController.text == "yemekci" &&
                    passwordController.text == "yemekci") {
                  GetStorage().write('type', 'yemekci');
                  GetStorage().write('isLoggedIn', 'true');
                  Get.to(const NavbarRouter());
                } else if (emailController.text == "musteri" &&
                    passwordController.text == "musteri") {
                  GetStorage().write('type', 'musteri');
                  GetStorage().write('isLoggedIn', 'true');
                  Get.to(const NavbarRouter());
                } else {
                  Fluttertoast.showToast(
                      msg: "Hatalı kullanıcı adı veya şifre girdiniz..",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red[200],
                      textColor: Colors.white,
                      fontSize: 16.0);
                }
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
                onTap: () {
                  Get.to(ForgotPasswordPage());
                },
              ),
              GestureDetector(
                child: Text("Kaydol",
                    style: TextStyle(
                        color: Colors.red[400],
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline)),
                onTap: () {
                  Get.to(SignupPage());
                },
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
            onTap: () {
              Get.to(AboutPage());
            },
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
              onTap: () {
                Get.to(ContractPage());
              }),
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
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent
            //color set to transperent or set your own color
            ));
    return WillPopScope(
        onWillPop: () async {
          SystemNavigator.pop();
          return false;
        },
        child: Scaffold(
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
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .3),
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
        ));
  }
}
