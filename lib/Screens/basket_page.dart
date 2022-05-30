import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kapkap/constants.dart';

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
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
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
                          Text("Karnını doyurmaya hazır mısın?",
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
              //height: MediaQuery.of(context).size.height * .1,
              //width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * .7),
              child: Text(
                "Sepet İçeriği",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: mainColor,
                    fontSize: 16),
              ),
            ),
            MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 5),
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ExpansionTile(
                        backgroundColor: mainColor,
                        iconColor: Colors.white,
                        textColor: Colors.white,
                        title: Row(
                          children: [
                            Text(
                              "2x",
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .06,
                            ),
                            Expanded(
                                child: Text(
                              "Patlıcan Musakka",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                            Text("50₺")
                          ],
                        ),
                        children: [
                          Text(
                            "Meliha Özşener",
                            style: TextStyle(color: Colors.white),
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Text(
                              "Yunus Emre mahallesi, Yunus Emre Apartmanı, no:0",
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    );
                  },
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Divider(
              color: Colors.black,
              endIndent: 15,
              indent: 15,
            ),
            Card(
              child: ListTile(
                title: Text("Toplam"),
                trailing: Text("150₺"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Güncel Bakiyen: 230₺",
                    style: TextStyle(color: mainColor)),
                Text("Sipariş Sonrası Bakiyen: 80₺",
                    style: TextStyle(color: mainColor)),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
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
                  "Sipariş Ver",
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
          ],
        ),
      )),
    );
  }
}
