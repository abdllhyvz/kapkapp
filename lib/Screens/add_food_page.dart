import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddFoodPage extends StatefulWidget {
  _AddFoodPageState createState() => _AddFoodPageState();
}

class _AddFoodPageState extends State<AddFoodPage> {
  Color mainColor = Color.fromARGB(255, 226, 144, 152);
  String filter = "Ana Yemek",
      filter2 = "Patlıcan Musakka",
      filter3 = "Mercimek Çorbası",
      filter4 = "Kısır",
      filter5 = "Mevsim Salata",
      filter6 = "Revani";
  String? selectedTur;
  var filterItems = ["Ana Yemek", "Çorba", "Ara Sıcak", "Salata", "Tatlı"];
  var mainFoods = ["Patlıcan Musakka", "İzmir Köfte", "Kuru Fasülye"];
  var soups = ["Mercimek Çorbası", "Yayla Çorbası", "Ezogelin Çorbası"];
  var arasicaklar = ["Kısır", "İçli Köfte", "Patates Graten"];
  var salads = ["Mevsim Salata", "Çoban Salata", "Söğüş"];
  var deserts = ["Revani", "Sütlaç", "Şekerpare"];

  Widget mainFoodsWidget() {
    return DropdownButton(
        value: filter2,
        items: mainFoods.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(
              items,
              style: TextStyle(
                color: mainColor,
              ),
            ),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            filter2 = newValue!;
          });
        },
        underline: DropdownButtonHideUnderline(child: Container()));
  }

  Widget soupsWidget() {
    return DropdownButton(
        value: filter3,
        items: soups.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(
              items,
              style: TextStyle(
                color: mainColor,
              ),
            ),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            filter3 = newValue!;
          });
        },
        underline: DropdownButtonHideUnderline(child: Container()));
  }

  Widget arasicakWidget() {
    return DropdownButton(
        value: filter4,
        items: arasicaklar.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(
              items,
              style: TextStyle(
                color: mainColor,
              ),
            ),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            filter4 = newValue!;
          });
        },
        underline: DropdownButtonHideUnderline(child: Container()));
  }

  Widget saladsWidget() {
    return DropdownButton(
        value: filter5,
        items: salads.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(
              items,
              style: TextStyle(
                color: mainColor,
              ),
            ),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            filter5 = newValue!;
          });
        },
        underline: DropdownButtonHideUnderline(child: Container()));
  }

  Widget desertWidget() {
    return DropdownButton(
        value: filter6,
        items: deserts.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(
              items,
              style: TextStyle(
                color: mainColor,
              ),
            ),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            filter6 = newValue!;
          });
        },
        underline: DropdownButtonHideUnderline(child: Container()));
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
                            Text("Eklemek İstediğin Yemeği Seç.",
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
                  height: MediaQuery.of(context).size.height * .08,
                  //width: MediaQuery.of(context).size.width * .65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Tür: ",
                        style: TextStyle(
                            fontSize: 17,
                            color: mainColor,
                            fontWeight: FontWeight.bold),
                      ),
                      DropdownButton(
                          value: filter,
                          items: filterItems.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: TextStyle(
                                  color: mainColor,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              filter = newValue!;
                            });
                          },
                          underline:
                              DropdownButtonHideUnderline(child: Container())),
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Container(
                  height: MediaQuery.of(context).size.height * .08,
                  //width: MediaQuery.of(context).size.width * .65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Yemek: ",
                        style: TextStyle(
                            fontSize: 17,
                            color: mainColor,
                            fontWeight: FontWeight.bold),
                      ),
                      if (filter == "Ana Yemek")
                        mainFoodsWidget()
                      else if (filter == "Çorba")
                        soupsWidget()
                      else if (filter == "Ara Sıcak")
                        arasicakWidget()
                      else if (filter == "Salata")
                        saladsWidget()
                      else
                        desertWidget()
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Container(
                  height: MediaQuery.of(context).size.height * .08,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Fiyat: ",
                        style: TextStyle(
                            fontSize: 17,
                            color: mainColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                          //height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .3,
                          decoration: BoxDecoration(
                              border: Border.all(color: mainColor),
                              borderRadius: BorderRadius.circular(70)),
                          child: TextFormField(
                            style: TextStyle(
                              color: mainColor,
                            ),
                            cursorColor: mainColor,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: "₺",
                                hintStyle: TextStyle(color: mainColor),
                                border: InputBorder.none,
                                hoverColor: mainColor),
                          )),
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * .08,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .06,
                width: MediaQuery.of(context).size.width * .35,
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  child: Text(
                    "Resim Yükle",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(mainColor)),
                  onPressed: null,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .14,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .1,
                width: MediaQuery.of(context).size.width * .35,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(mainColor)),
                  child: Text(
                    "EKLE",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  onPressed: null,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
