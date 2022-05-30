import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants.dart';

class AboutPage extends StatefulWidget {
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent
            //color set to transperent or set your own color
            ));
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                  width: MediaQuery.of(context).size.width * .01,
                ),
                Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .06),
                    child: Column(
                      children: [
                        Text(
                            "KapKapp hakkında merak ettiklerini\nburadan öğrenebilirsin.",
                            style: TextStyle(color: Colors.white)),
                      ],
                    )),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Container(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * .397),
            child: Text(
              "KapKapp Nedir?",
              style: TextStyle(
                  color: mainColor, fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          Text("KapKapp, evde yemek yapmayı seven ve bol bol boş vakti olan insanların, yemeklerini diğer insanlarla paylaşmasını ve buradan kazanç elde etmesini sağlayan bir uygulamadır." +
              "KapKapp, hem kullanıcıların sağlıklı ve uygun fiyatlı yemek yemesine hem de kazanç elde etmesine olanak sağlamaktadır."),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 20,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Container(
            padding:
                EdgeInsets.only(right: MediaQuery.of(context).size.width * .1),
            child: Text(
              "KapKapp'da Bir Sipariş Nasıl İşler?",
              style: TextStyle(
                  color: mainColor, fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          Text("KapKapp'da kullanıcı olarak bir yemekçiden sipariş verdiğinizde, siparişiniz yemekçi sayfasında görünür ve yemekçinin onayını bekler. Yemekçi 30 dakika içinde siparişi" +
              " onaylamazsa sipariş iptal olur ve bakiyeniz iade edilir. Sipariş onaylandıktan sonra hazırlanıyor statüsüne geçer ve yemekçi 30 dakika içerisinde siparişi teslime hazır " +
              "statüsüne geçirmez ise sipariş iptal olur ve bakiyeniz iade edilir. Yemekçi yemeği servise hazır hale getirdikten sonra teslime hazır statüsüne geçirir ve kullanıcı" +
              "1 saat içerisinde yemeği almalıdır. Bu statüden sonra bakiye iadesi yapılmamaktadır ve iptal edilecek siparişler bu statüye kadar iptal edilmelidir." +
              " Kullanıcı yemeği KapKapp kaplarında take-away olarak yemekçinin kapısından alır ve sipariş teslim edildi statüsüne gelir. Bu statüde süreç bitmiş olur."),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 20,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          Container(
            padding:
                EdgeInsets.only(right: MediaQuery.of(context).size.width * .32),
            child: Text(
              "KapKapp'da Nasıl Satış Yapabilirim?",
              style: TextStyle(
                  color: mainColor, fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          Text("KapKapp'da satış yapabilmek için öncelikle bir müşteri hesabı oluşturmanız gerekmektedir. Kaydol kısmından müşteri hesabını seçip gerekli alanları doldurduktan " +
              "sonra, mailinize bir onay formu gelir. Bu formu onayladıktan sonra ise KapKapp ekibi tarafından aranırsınız. Gerekli görüşmeler yapıldıktan sonra mahallenizde satış" +
              " yapmaya başlayabilirsiniz. Müşteri hesabınıza giriş yapıp yemek ekleme sekmesinden yemek ekleyebilirsiniz."),
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
            padding:
                EdgeInsets.only(right: MediaQuery.of(context).size.width * .1),
            child: Text(
              "Satış Yaptıktan Sonra Paramı Nasıl Alacağım?",
              style: TextStyle(
                  color: mainColor, fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          Text("KapKapp'da bakiyenizde biriken parayı çekme sınırı vardır. Bakiyenizdeki miktar 300₺'den fazla ise ayda bir kere olmak üzere bakiyenizi banka hesabınıza aktarabilirsiniz." +
              " Profil sekmesinden Çek tuşuna basarak bu eylemi gerçekleştirebilirsiniz. Paranın hesabınıza yatması 1-3 iş günü sürebilir. Eğer bakiyenizdeki miktar 300₺'den az ise" +
              " ve 3 ay boyunca bakiyeniz bu miktarı geçmez ise 3 ayın sonunda miktar hesabınıza otomatik olarak aktarılır. Örneğin; bakiyeniz 320₺ ise ve 5 Ocak tarihinde " +
              "çekim yaparsanız bakiye hesabınıza iletilir fakat 5 Şubat tarihine kadar yeni bir çekim yapamazsınız. Eğer bakiyeniz 5 Ocak tarihinden 5 Nisan tarihine kadar 290₺" +
              " kalırsa, 5 Nisan tarihinde bu bakiye hesabınıza aktarılır."),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 20,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Container(
            child: Text(
              "Daha fazla merak ettiğiniz konu varsa destek@kapkapp.com adresine mail atabilirsiniz.",
              style: TextStyle(fontSize: 15),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
        ]),
      ),
    );
  }
}
