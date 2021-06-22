import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_appdegisim/Yorumlar/Grafik.dart';

Future<void>main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Yorumlar());
}


class Yorumlar extends StatefulWidget {
  @override
  _YorumlarState createState() => _YorumlarState();
}

class _YorumlarState extends State<Yorumlar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: YorumlarAnasayfa(),
    );
  }
}
class YorumlarAnasayfa extends StatefulWidget {
  @override
  _YorumlarAnasayfaState createState() => _YorumlarAnasayfaState();
}

class _YorumlarAnasayfaState extends State<YorumlarAnasayfa> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2= TextEditingController();

  var gelenAdSoyad="";
  var gelenYorum="";

  yorumYap(){
    FirebaseFirestore.instance
        .collection("Yorumlar")
        .doc(t1.text)
        .set({'ad soyad': t1.text, 'yorum': t2.text}).whenComplete(
            () => print("Yorum yapıldı"));
  }
  yorumGuncelle(){
    FirebaseFirestore.instance
        .collection("Yorumlar")
        .doc(t1.text)
        .update({'ad soyad': t1.text, 'yorum': t2.text}).whenComplete(
            () => print("Yorum güncellendi"));
  }
  yorumSil(){
    FirebaseFirestore.instance
        .collection("Yorumlar")
        .doc(t1.text)
        .delete();
  }
  yorumGetir(){
    FirebaseFirestore.instance
        .collection("Yorumlar")
        .doc(t1.text)
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenAdSoyad= gelenVeri.data()['Ad Soyad'];
        gelenYorum= gelenVeri.data()['Yorum'];
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent[50],
        title: Text("YORUMLAR"),
        centerTitle: true,
      ),
      body: Container(
        margin:  EdgeInsets.all(50),
        child: Center(
          child: Column(
            children: [
              PopupMenuButton(
                child: Icon(Icons.add_a_photo),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text("Fotoğraf Yükle"),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text("Fotoğraf Çek"),
                  ),
                ],
                onCanceled: () {
                  print("İşlem seçilmedi");
                },
                onSelected: (menuItemValue){
                  if(menuItemValue==1){
                    print("İşlem 1 seçildi");
                  }
                  if(menuItemValue==2){
                    print("İşlem 2 seçildi");
                  }
                },
              ),
              ListView(
                children: [
                  ElevatedButton(
                    child: Text("BİLDİRİM"),
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title:  Text("Bildirim" ,style:TextStyle(color: Colors.white),),
                           backgroundColor: Colors.cyanAccent,
                           content: SizedBox(
                             height: 70,
                             child: Column(
                               children: [
                                 Text("Yorum Yapmayı ve Beğeni Butonuna Tıklamayı Unutma!"),
                               ],
                             ),
                           ),
                            actions: [
                              ElevatedButton(
                                child: Text("Beğen"),
                                onPressed: (){
                                  print("Beğenildi");
                                },
                              ),
                            ],
                          );
                        }
                      );
                    } ,
                  ),
                  ListTile(
                    title: Text("İSTATİKSEL GÖSTERİM",style: TextStyle(fontSize:20),),
                    leading: Icon(Icons.water_damage_rounded),
                    trailing: Icon(Icons.arrow_forward),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Grafik()));
                      }
                  ),
                ],
              ),
              TextField(controller: t1,),
              TextField(controller: t2,),
              Row(children: [
                ElevatedButton(child: Text("Yorum Yap"), onPressed:yorumYap),
                ElevatedButton(child: Text("Güncelle"),onPressed: yorumGuncelle),
                ElevatedButton(child: Text("Sil"),onPressed: yorumSil),
                ElevatedButton(child: Text("Yorumumu Göster"),onPressed: yorumGetir),
              ],
              ),
              ListTile(
                title: Text(gelenAdSoyad),
                subtitle: Text(gelenYorum),
              ),
            ],
          ),
        ),

      ),
    );
  }
}




