import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:kapkap/Screens/create_order_page.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> cookList = [];
  String filter = "Puana Göre";
  var filterItems = ["Puana Göre", "İsme Göre", "Sipariş Sayısına Göre"];

  Widget cookView() {
    return Container(
      height: MediaQuery.of(context).size.height * .1,
      width: MediaQuery.of(context).size.width * .96,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromARGB(255, 226, 144, 152),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey.shade800,
          backgroundImage: NetworkImage(
              "https://cdn.iha.com.tr/Contents/images/2016/24/1689225.jpg"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Meliha Özşener"),
            RatingBarIndicator(
              itemBuilder: (context, index) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              itemCount: 5,
              rating: 4,
              direction: Axis.horizontal,
              itemSize: MediaQuery.of(context).size.width * .045,
            ),
          ],
        ),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
    );
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 219, 121, 130),
                  ),
                  height: MediaQuery.of(context).size.height * .1,
                  width: MediaQuery.of(context).size.width * .65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 30,
                        color: Colors.white,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .05,
                        width: MediaQuery.of(context).size.width * .55,
                        child: Text(
                          "Yunus Emre Mahallesi, Pamukkale",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 219, 121, 130),
                  ),
                  height: MediaQuery.of(context).size.height * .1,
                  width: MediaQuery.of(context).size.width * .3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.account_balance_wallet,
                        color: Colors.white,
                      ),
                      Text(
                        "12,45 ₺",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .1,
              width: MediaQuery.of(context).size.width * .95,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .07,
                    width: MediaQuery.of(context).size.width * .7,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Yemek veya Yemekçi Ara",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 8, bottom: 8)),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .07,
                    width: MediaQuery.of(context).size.width * .16,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 219, 121, 130))),
                      child: Text("Ara"),
                      onPressed: null,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .08,
              width: MediaQuery.of(context).size.width * .5,
              child: DropdownButton(
                  value: filter,
                  items: filterItems.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      filter = newValue!;
                    });
                  },
                  underline: DropdownButtonHideUnderline(child: Container())),
            ),
            Container(
                height: MediaQuery.of(context).size.height * .42,
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
                            onTap: () {
                              Get.to(() => CreateOrderPage());
                            },
                            dense: true,
                            leading: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              backgroundImage: NetworkImage(
                                  "https://cdn.iha.com.tr/Contents/images/2016/24/1689225.jpg"),
                            ),
                            subtitle: Text("Başarılı Sipariş Sayısı: 7"),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Meliha Özşener"),
                                RatingBarIndicator(
                                  itemBuilder: (listViewContext, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  rating: 4,
                                  direction: Axis.horizontal,
                                  itemSize:
                                      MediaQuery.of(context).size.width * .045,
                                ),
                              ],
                            ),
                            trailing: Icon(Icons.keyboard_arrow_right),
                          ),
                        );
                      },
                    ))),
          ],
        )),
      ),
    );
  }
}
