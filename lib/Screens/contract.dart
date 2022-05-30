import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContractPage extends StatefulWidget {
  _ContractPageState createState() => _ContractPageState();
}

class _ContractPageState extends State<ContractPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent
            //color set to transperent or set your own color
            ));
    return Scaffold(
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
                        Text("KapKapp Kullanıcı Sözleşmesi",
                            style: TextStyle(color: Colors.white)),
                      ],
                    )),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
        ]),
      ),
    );
  }
}
