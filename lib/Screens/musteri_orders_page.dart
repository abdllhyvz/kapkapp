import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constants.dart';

class MusteriOrdersPage extends StatefulWidget {
  _MusteriOrdersPageState createState() => _MusteriOrdersPageState();
}

class _MusteriOrdersPageState extends State<MusteriOrdersPage> {
  String startDate = "Başlangıç Tarihi", endDate = "Bitiş Tarihi";
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
                            Text("Siparişlerine buradan ulaşabilirsin.",
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
                          leading: Text("Teslim Edildi"),
                          title: Text(
                            "Meliha Özşener",
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          subtitle: Text("29/05/2022"),
                          trailing: Text("25₺"),
                          children: [
                            Text(
                              "1x Patlıcan Musakka",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .015,
                            ),
                            RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              itemSize: MediaQuery.of(context).size.width * .05,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .015,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * .1,
                              width: MediaQuery.of(context).size.width * .8,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .015,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * .06,
                              width: MediaQuery.of(context).size.width * .3,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: ElevatedButton(
                                child: Text("Değerlendir"),
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
            ]),
          ),
        ));
  }
}
