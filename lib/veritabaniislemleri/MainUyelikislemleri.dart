import "package:flutter/material.dart";
import 'package:flutter_appdegisim/veritabaniislemleri/Uyeliklistesi.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter_appdegisim/veritabaniislemleri/Uyelikler.dart';
import 'package:flutter_appdegisim/veritabaniislemleri/db_utis.dart';

DbUtils utils = DbUtils();

void main() {
  runApp(Uyelikislemleri());
}

class Uyelikislemleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ÜYELİK İŞLEMLERİ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainUyelikislemleri(),
    );
  }
}

class MainUyelikislemleri extends StatefulWidget {
  @override
  _MainUyelikislemleriState createState() => _MainUyelikislemleriState();
}

class _MainUyelikislemleriState extends State<MainUyelikislemleri> {
  TextEditingController UyelikisimsoyisimController = TextEditingController();
  TextEditingController UyelikepostaController = TextEditingController();
  TextEditingController UyeliksifreController = TextEditingController();

  Future<Database> database;

  List<Uyelikler> UyelikList = [];

  _onPressedUpdate() async {
    final Uye = Uyelikler(
      isimsoyisim: (UyelikisimsoyisimController.text),
      eposta: UyelikepostaController.text,
      sifre: int.parse(UyeliksifreController.text),
    );
    utils.updateUyelikler(Uye);
     UyelikList= await utils.uyelikler();
    //print(dogList);
    getData();
  }

  _onPressedAdd() async {
    final x = Uyelikler(
      isimsoyisim: (UyelikisimsoyisimController.text),
      eposta: UyelikepostaController.text,
      sifre: int.parse(UyeliksifreController.text),
    );
    utils.insertUyelikler(x);
    UyelikList = await utils.uyelikler();
    getData();
  }

  _deleteUyeliklerTable() {
    utils.deleteTable();
     UyelikList = [];
    getData();
  }

  void getData() async {
    await utils.uyelikler().then((result) => {
      setState(() {
        UyelikList = result;
      })
    });
    print(UyelikList);
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ÜYELİK İŞLEMLERİ',
      home: Scaffold(
        appBar: AppBar(title: Text("ÜYELİK İŞLEMLERİ")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: UyelikisimsoyisimController,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'İsim Soyisim giriniz.'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: UyelikepostaController,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'e-posta giriniz.'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: UyeliksifreController,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Şifrenizi giriniz.'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: _onPressedAdd, child: Text("üyelik oluştur")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: _deleteUyeliklerTable,
                    child: Text("Üyeliğimi sil")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Uyeliklistesi()),
                      );
                    },
                    child: Text("Üyelikleri Listele")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      getData();
                    },
                    child: Text("Listeyi yenile")),
              ),
              Text(UyelikList.length.toString()),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: UyelikList.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(UyelikList[index].isimsoyisim),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
