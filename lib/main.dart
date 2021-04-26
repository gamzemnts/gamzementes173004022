import 'package:flutter/material.dart';
import 'package:flutter_appdegisim/Adres.dart';
import 'package:flutter_appdegisim/BodrumDenizMuzesi.dart';
import 'package:flutter_appdegisim/BodrumSuAltiArkeoloji.dart';
import 'package:flutter_appdegisim/CaddeveMeydanlarBarlarSokagi.dart';
import 'package:flutter_appdegisim/CennetKoyu.dart';
import 'package:flutter_appdegisim/Hakkimizda.dart';
import 'package:flutter_appdegisim/Sikayet.dart';
import 'package:flutter_appdegisim/YarimAdaHakkinda.dart';
import 'package:flutter_appdegisim/ZekiMurenSanatMuzesi.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bodrum Tur Acentesi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text("BODRUM TUR ACENDESİ"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:const <Widget> [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors. blue,
              ),
              child: Text(
                "BODRUM TUR ACENTESİ MENU",
                style: TextStyle(color: Colors.black,
                    fontSize: 25
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.account_circle),
              title:  Text("Hakkımızda"),
            ),
            ListTile(
              leading: Icon(Icons.add_call),
              title:  Text("İletişim/Adres"),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text("Memnuniyet/Şikayet Kutusu"),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          ListTile(
              title: Text("BODRUM YARIM ADASI HAKKINDA",style: TextStyle(fontSize:20),),
              subtitle: Text("Muğla'nın en popüler ve en turistik ilçelerinden biri olan Bodrum..."),
              leading: Icon(Icons.water_damage_rounded),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => YarimAdaHakkinda()));
              }
          ),
          ListTile(
              title: Text("BODRUM SU ALTI ARKEOLOJİ MÜZESİ",style: TextStyle(fontSize:20),),
              subtitle: Text("Dünyada önemli ve sayılı müzeler arasında yer alan Bodrum Sualtı Arkeoloji Müzesi, Türkiye’de tek su altı arkeoloji müzesi olma özelliğini taşıyor."),
              leading: Icon(Icons.water_damage_rounded),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => BodrumSuAltiArkeoloji()));
              }
          ),
          ListTile(
              title: Text("ZEKİ MÜREN SANAT MÜZESİ",style: TextStyle(fontSize:20),),
              subtitle: Text("Sanat güneşimiz Müzikleri ile bilinen Zeki Mürerin son yıllarda kaldığı ev müzeye dönüştürüldü."),
              leading: Icon(Icons.water_damage_rounded),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ZekiMurenSanatMuzesi()));
              }

          ),
          ListTile(
              title: Text("BODRUM DENİZ MÜZESİ" ,style: TextStyle(fontSize:20),),
              subtitle: Text("Müzede sergilenen eserler arasında; Bodrum tipi tekne modelleri ve birçok farklı yerden toplanan deniz kabukları yer alıyor."),
              leading: Icon(Icons.water_damage_rounded),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => BodrumDenizMuzesi()));
              }
          ),
          ListTile(
              title: Text("CADDE ve MEYDANLAR/BARLAR SOKAĞI" ,style: TextStyle(fontSize:20),),
              subtitle: Text("Gümbet Barlar Sokağı, yerli ve yabancı birçok turistin akın ettiği yerlerden biridir"),
              leading: Icon(Icons.water_damage_rounded),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CaddeveMeydanlarBarlarSokagi()));
              }
          ),
          ListTile(
              title: Text("CENNET KOYU",style: TextStyle(fontSize:20),),
              subtitle: Text("Bodrum merkeze 20 km uzaklıkta bulunan Cennet Koyu, ismi gibi bir koy..."),
              leading: Icon(Icons.water_damage_rounded),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CennetKoyu()));
              }
          ),
          ListTile(
            title: Text("Hakkımızda sayfası için tıklayınız",  style: TextStyle (fontSize: 15,fontStyle: FontStyle.italic ),),
            leading: Icon(Icons.account_circle),
            trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Hakkimizda()));
              }
          ),
          ListTile(
              title: Text("İletişim/Adres sayfası için tıklayınız",  style: TextStyle (fontSize: 15,fontStyle: FontStyle.italic ),),
              leading: Icon(Icons.add_call),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Adres()));
              }
          ),
          ListTile(
              title: Text("Memnuniyet/Şikayet Kutusu",  style: TextStyle (fontSize: 15,fontStyle: FontStyle.italic ),),
              leading: Icon(Icons.message),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Sikayet()));
              }
          ),
        ],
      ),
    );
  }
}

