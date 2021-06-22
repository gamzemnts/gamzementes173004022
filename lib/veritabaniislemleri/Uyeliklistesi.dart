import "package:flutter/material.dart";
import 'package:flutter_appdegisim/veritabaniislemleri/MainUyelikislemleri.dart';
import 'package:flutter_appdegisim/veritabaniislemleri/Uyelikler.dart';
import 'package:flutter_appdegisim/veritabaniislemleri/db_utis.dart';


DbUtils utils = DbUtils();

class Uyeliklistesi extends StatefulWidget {
  @override
  _UyeliklistesiState createState() => _UyeliklistesiState();
}

class _UyeliklistesiState extends State<Uyeliklistesi> {
  List<Uyelikler> uyeliklerlistesi = [];

  void getData() async {
    await utils.uyelikler().then((result) => {
      setState(() {
        uyeliklerlistesi = result;
      })
    });
    print(uyeliklerlistesi);
  }

  void showAlert(String alertTitle, String alertContent) {
    AlertDialog alertDialog;
    alertDialog =
        AlertDialog(title: Text(alertTitle), content: Text(alertContent));
    showDialog(context: context, builder: (_) => alertDialog);
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(uyeliklerlistesi.length.toString() + " Üyelikler Listesi")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: uyeliklerlistesi.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(uyeliklerlistesi[index].eposta),
                    onTap: () {
                      showAlert("Üyelik " + index.toString() + " clicked",
                          "Üyelik " + index.toString() + " clicked");
                    },
                    onLongPress: () async {
                      await utils.deleteUyelik(uyeliklerlistesi[index].sifre).then((value) => {
                        showAlert("Üyelik " + index.toString() + " deleted",
                            "Üyelik " + index.toString() + " deleted")
                      });
                      getData();
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainUyelikislemleri()));
                  },
                  child: Text("Üyelik İşlemleri Sayfası")),
            ),
          ],
        ),
      ),
    );
  }
}

