import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kapkap/constants.dart';

class DatasPage extends StatefulWidget {
  _DatasPageState createState() => _DatasPageState();
}

class _DatasPageState extends State<DatasPage> {
  String startDate = "Başlangıç Tarihi",
      endDate = "Bitiş Tarihi",
      start1 = "Başlangıç Tarihi",
      end1 = "Bitiş Tarihi";
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
            )),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Divider(
              color: Colors.black,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Container(
              child: Text(
                "En Çok Satan Yemekler",
                style: TextStyle(color: mainColor, fontSize: 24),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  backgroundImage: NetworkImage(
                      "https://i20.haber7.net/resize/1300x788//haber/haber7/photos/2019/18/enfes_patlican_musakka_yemegi_nasil_yapilir_1556605944_3205.jpg"),
                ),
                title: Text(
                  "Patlıcan Musakka",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                trailing: Text("21 adet"),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  backgroundImage: NetworkImage(
                      "https://cdn.yemek.com/mncrop/940/625/uploads/2014/07/kisir-yemekcom.jpg"),
                ),
                title: Text(
                  "Kısır",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                trailing: Text("19 adet"),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  backgroundImage: NetworkImage(
                      "https://im.haberturk.com/2020/05/11/ver1589172823/2675042_1200x627.jpg"),
                ),
                title: Text(
                  "İçli Köfte",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                trailing: Text("15 adet"),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Divider(
              color: Colors.black,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Container(
              child: Text(
                "Siparişler ve Yorumlar",
                style: TextStyle(color: mainColor, fontSize: 24),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {
                      DatePicker.showDatePicker(context,
                          showTitleActions: true,
                          minTime: DateTime(2022, 1, 1),
                          maxTime: DateTime.now(),
                          onChanged: (date) {}, onConfirm: (date) {
                        setState(() {
                          startDate =
                              "${date.day.toString()}/${date.month.toString()}/${date.year.toString()}";
                        });
                      }, currentTime: DateTime.now(), locale: LocaleType.tr);
                    },
                    child: Text(
                      startDate,
                      style: TextStyle(color: mainColor),
                    )),
                Text(
                  "-",
                  style: TextStyle(color: mainColor),
                ),
                TextButton(
                    onPressed: () {
                      DatePicker.showDatePicker(context,
                          showTitleActions: true,
                          minTime: DateTime(2018, 3, 5),
                          maxTime: DateTime(2019, 6, 7),
                          onChanged: (date) {}, onConfirm: (date) {
                        setState(() {
                          endDate =
                              "${date.day.toString()}/${date.month.toString()}/${date.year.toString()}";
                        });
                      }, currentTime: DateTime.now(), locale: LocaleType.tr);
                    },
                    child: Text(
                      endDate,
                      style: TextStyle(color: mainColor),
                    )),
              ],
            ),
            MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: Container(
                  height: MediaQuery.of(context).size.height * .7,
                  width: MediaQuery.of(context).size.width * .94,
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 5,
                      );
                    },
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ExpansionTile(
                        backgroundColor: mainColor,
                        textColor: Colors.white,
                        iconColor: Colors.white,
                        leading: RatingBarIndicator(
                          itemBuilder: (listViewContext, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          rating: 4,
                          direction: Axis.horizontal,
                          itemSize: MediaQuery.of(context).size.width * .04,
                        ),
                        title: Text(
                          "Ata Polat Özkan",
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                        subtitle: Text(
                          "28/05/2022",
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                        trailing: Text("70₺"),
                        children: [
                          Text(
                            "Patlıcan Musakka x 1, Sütlaç x 2",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .015,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * .25,
                            width: MediaQuery.of(context).size.width * .7,
                            color: Colors.white,
                            child: Text("Harikaydı, ellerinize sağlık"),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .015,
                          ),
                        ],
                      );
                    },
                  ),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Divider(
              color: Colors.black,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Container(
              child: Text(
                "Bakiye Geçmişi",
                style: TextStyle(color: mainColor, fontSize: 24),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {
                      DatePicker.showDatePicker(context,
                          showTitleActions: true,
                          minTime: DateTime(2022, 1, 1),
                          maxTime: DateTime.now(),
                          onChanged: (date) {}, onConfirm: (date) {
                        setState(() {
                          start1 =
                              "${date.day.toString()}/${date.month.toString()}/${date.year.toString()}";
                        });
                      }, currentTime: DateTime.now(), locale: LocaleType.tr);
                    },
                    child: Text(
                      start1,
                      style: TextStyle(color: mainColor),
                    )),
                Text(
                  "-",
                  style: TextStyle(color: mainColor),
                ),
                TextButton(
                    onPressed: () {
                      DatePicker.showDatePicker(context,
                          showTitleActions: true,
                          minTime: DateTime(2018, 3, 5),
                          maxTime: DateTime(2019, 6, 7),
                          onChanged: (date) {}, onConfirm: (date) {
                        setState(() {
                          end1 =
                              "${date.day.toString()}/${date.month.toString()}/${date.year.toString()}";
                        });
                      }, currentTime: DateTime.now(), locale: LocaleType.tr);
                    },
                    child: Text(
                      end1,
                      style: TextStyle(color: mainColor),
                    )),
              ],
            ),
            Card(
              child: ListTile(
                leading: Text("29/05/2022"),
                title: Text(
                  "Çekim",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                trailing: Text("240₺"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Text("11/04/2022"),
                title: Text(
                  "Çekim",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                trailing: Text("3700₺"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Text("07/02/2022"),
                title: Text(
                  "Otomatik Aktarım",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                trailing: Text("130₺"),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
