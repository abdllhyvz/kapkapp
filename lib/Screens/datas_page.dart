import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kapkap/constants.dart';

class DatasPage extends StatefulWidget {
  _DatasPageState createState() => _DatasPageState();
}

class _DatasPageState extends State<DatasPage> {
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
                          Text("Verilerine buradan ulaşabilirsin.",
                              style: TextStyle(color: Colors.white))
                        ],
                      )),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Container(
              //height: MediaQuery.of(context).size.height * .076,
              //width: MediaQuery.of(context).size.width * .6,
              child: RatingBarIndicator(
                itemBuilder: (listViewContext, index) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 5,
                rating: 4,
                direction: Axis.horizontal,
                itemSize: MediaQuery.of(context).size.width * .07,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .2,
              width: MediaQuery.of(context).size.width * .4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.account_balance_wallet,
                    color: mainColor,
                    size: 35,
                  ),
                  Text(
                    "157,50 ₺",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: mainColor,
                        fontSize: 18),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .08,
                    width: MediaQuery.of(context).size.width * .15,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(mainColor)),
                      child: Text(
                        "ÇEK",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 11),
                      ),
                      onPressed: () {
                        Fluttertoast.showToast(
                            msg: "Yeterli bakiyeye sahip değilsin.",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red[200],
                            textColor: Colors.white,
                            fontSize: 16.0);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
                child: Text(
              "*Ücret çekmek için 200₺ ve üzeri bakiyeye sahip olmalısın.\n Aksi takdirde 41 gün sonra bakiyen otomatik olarak hesabına aktarılacaktır.",
              style: TextStyle(color: Colors.red, fontSize: 10),
            ))
          ]),
        ),
      ),
    );
  }
}
