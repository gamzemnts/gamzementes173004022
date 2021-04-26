import 'package:flutter/material.dart';

class Adres extends StatefulWidget {
  @override
  _AdresState createState() => _AdresState();
}

class _AdresState extends State<Adres> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent[50],
          title: Text("İLETİŞİM/ADRES"),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text("MERKEZ OFİS: Süreçler online olarak web adresi üzerinden yürütülmektedir.",
                style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal, color: Colors.white ),),
            ),
            ListTile(
              title: Text("TELEFON: +90 252 695 30 05",
                style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal, color: Colors.white ),),
            ),
            ListTile(
              title: Text("GSM: +90 252 555 77 88",
                style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal, color: Colors.white ),),
            ),
            ListTile(
              title: Text("MAIL: info@bodrumturacantee.com",
                style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal, color: Colors.white ),),
            ),
            ListTile(
              title: Text("PARA TRANSFERİ/HAVALE BANKA ADI: Garanti Bankası.",
                style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal, color: Colors.white ),),
            ),
            ListTile(
              title: Text("ŞUBE: Bodrum Şubesi.",
                style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal, color: Colors.white ),),
            ),
            ListTile(
              title: Text("HESAP ADI: Bodrumturacantesi tas. Tur.Tic. Ltd.Şti.",
                  style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal, color: Colors.white ),),
            ),
            ListTile(
              title: Text("HESAP PARA BİRİMİ: Euro- Dolar ve TL.",
                style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal, color: Colors.white ),),
            ),
            ListTile(
              title: Text("HESAP ADRESİ: Çarşı Mah. Portakal Cad. No:8/A Bodrum.",
                style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal, color: Colors.white ),),
            ),
            ListTile(
              title: Text("BİZİ TERCİH ETTİĞİNİZ İÇİN TEŞEKÜR EDERİZ.",
                style: TextStyle (fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic ),),
            ),
            ListTile(
              title: Text("Sayfa Sahibi: Gamze MENTEŞ- mntss@gmail.com",
                style: TextStyle (fontSize: 15, fontWeight: FontWeight.normal, color: Colors.black, fontStyle: FontStyle.italic ),
              ),
            ),
          ],

        ),
      ),

    );
  }
}
