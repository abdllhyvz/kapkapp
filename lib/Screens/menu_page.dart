import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kapkap/constants.dart';

class MenuPage extends StatefulWidget {
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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
                            Text("Hoşgeldin Abdullah,",
                                style: TextStyle(color: Colors.white)),
                            Text("Menüne göz at veya düzenle.",
                                style: TextStyle(color: Colors.white))
                          ],
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: Container(
                    height: MediaQuery.of(context).size.height * .7,
                    width: MediaQuery.of(context).size.width * .94,
                    color: Colors.grey[200],
                    child: ListView.separated(
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 5,
                        );
                      },
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return ExpansionTile(
                          backgroundColor: mainColor,
                          textColor: Colors.white,
                          iconColor: Colors.white,
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey.shade800,
                            backgroundImage: NetworkImage(
                                "https://i20.haber7.net/resize/1300x788//haber/haber7/photos/2019/18/enfes_patlican_musakka_yemegi_nasil_yapilir_1556605944_3205.jpg"),
                          ),
                          title: Text(
                            "Patlıcan Musakka",
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          children: [
                            Text(
                              "Fiyat: 15₺",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .015,
                            ),
                            Text("Satış Sayısı: 50",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .015,
                            ),
                            Text("Tür: Ana Yemek",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .015,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * .06,
                              width: MediaQuery.of(context).size.width * .25,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: ElevatedButton(
                                child: Text("Düzenle"),
                                onPressed: null,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .015,
                            ),
                          ],
                        );
                      },
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
