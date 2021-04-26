import 'package:flutter/material.dart';

class Hakkimizda extends StatefulWidget {
  @override
  _HakkimizdaState createState() => _HakkimizdaState();
}

class _HakkimizdaState extends State<Hakkimizda> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent[50],
          title: Text("HAKKIMIZDA"),
          centerTitle: true,
        ),
        body: Container(
            margin: EdgeInsets.only(top: 80.0,left: 300.0,bottom: 10.0,),
            width: 900, height: 300, color: Colors.white,
            child: Column(
              children: [
                Text(""),
                Text(""),
                Text("Bodrum' a geldiğinizde kafanız karışmasın. Nereyi gezmeliyim, en popüler cadde neresi en güzel koy veya deniz",
                  style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal,color: Colors.blue ),),
                Text("neresi diye araştırıp düşünmenize gerek yok. Web sitesi üzerinden rahalıkla ulaşabileceğiniz Bodrum Tur",
                  style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal,color: Colors.blue ),),
                Text("Acentesi sizlere Yarım ada içerisinde gezip görebileceğiniz en güzel koyları, mekanaları sunmaktadır. Bodrum Tur ",
                  style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal,color: Colors.blue ),),
                Text("Acentesini kendinize rehper olarak kullanabilirsiniz. Yol haritalarını kullanarak ulaşımda kolaylık sağlayabilirsiniz.",
                  style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal,color: Colors.blue ),),
                Text(""),
                Text("'Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yönetilen 3004881 kodlu Mobil Programlama dersi",
                  style: TextStyle (fontSize: 15, fontWeight: FontWeight.normal,color: Colors.black ),),
                Text("kapsamında 173004022 numaralı Gamze MENTEŞ tarafından 30 Nisan 2021 günü yapılmıştır.'",
                  style: TextStyle (fontSize: 15, fontWeight: FontWeight.normal,color: Colors.black ),),
                Text(""),
                Text(""),
                Text("Bodrum Tur Acentesi sağlıklı günler diler, size en iyi şekilde hizmet verir.",
                  style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal,color: Colors.blue, fontStyle: FontStyle.italic),),
              ],
            ),
        ),
      ),
    );
  }
}
