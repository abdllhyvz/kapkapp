import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kapkap/Screens/navbar.dart';
import 'package:kapkap/constants.dart';

class CreateOrderPage extends StatefulWidget {
  _CreateOrderPageState createState() => _CreateOrderPageState();
}

class _CreateOrderPageState extends State<CreateOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Text(
              "Meliha Özşener'in Menüsü",
              style: TextStyle(
                  color: mainColor, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Container(
                height: MediaQuery.of(context).size.height * .5,
                child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.separated(
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 5,
                        );
                      },
                      //itemExtent: MediaQuery.of(context).size.width * .15,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[100],
                          ),
                          child: ListTile(
                            dense: true,
                            leading: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              backgroundImage: NetworkImage(
                                  "https://i20.haber7.net/resize/1300x788//haber/haber7/photos/2019/18/enfes_patlican_musakka_yemegi_nasil_yapilir_1556605944_3205.jpg"),
                            ),
                            subtitle: Text("Kalan Porsiyon: 3"),
                            title: Row(
                              children: [
                                Text("Patlıcan Musakka"),
                                SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * .2),
                                Text("25₺")
                              ],
                            ),
                            trailing: Icon(Icons.add),
                          ),
                        );
                      },
                    ))),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
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
                  "Sepete Git",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                onPressed: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                  Get.to(NavbarRouter());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
