import 'package:flutter/material.dart';

 class CennetKoyu extends StatefulWidget {
  @override
  _CennetKoyuState createState() => _CennetKoyuState();
}

class _CennetKoyuState extends State<CennetKoyu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent[50],
          title: Text("CENNET KOYU"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(padding: const EdgeInsets.only(left: 50.0,top: 20.0,bottom: 20.0,),
                child: CircleAvatar(
                  radius: 250,
                  backgroundImage: AssetImage("resimdosyalari/images/cennetkoyu.jpg"),
                )
            ),
            Text("Burası neresi? Bodrum merkeze 20 km uzaklıkta bulunan Cennet Koyu, ismi gibi bir",
            style: TextStyle(color: Colors.green, fontSize: 17, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic, shadows: [
              Shadow(color: Colors.limeAccent, offset: Offset(-1,-2))
            ]),),
            Text("koy… Mavi yolculuğun bir numaralı uğrak noktası olan koy, Bodrum’un en güzel,",
              style: TextStyle(color: Colors.green, fontSize: 17, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,shadows: [
                Shadow(color: Colors.limeAccent, offset: Offset(-1,-2))
              ]),),
            Text("koylarından biridir. Turkuaz rengi denizinin tertemiz ve doğasının yemyeşil olması",
              style: TextStyle(color: Colors.green, fontSize: 17, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,shadows: [
                Shadow(color: Colors.limeAccent, offset: Offset(-1,-2))
              ]),),
            Text("paha biçilmez bir özelliğidir. Aynı zamanda koyun içerisinde bulunan Cennet Kamp",
              style: TextStyle(color: Colors.green, fontSize: 17, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,shadows: [
                Shadow(color: Colors.limeAccent, offset: Offset(-1,-2))
              ]),),
            Text("adında bir camping bölgesi var ve istediğiniz gibi kamp yapma imkanı bulabiliyorsunuz.",
              style: TextStyle(color: Colors.green, fontSize: 17, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,shadows: [
                Shadow(color: Colors.limeAccent, offset: Offset(-1,-2))
              ]),),
          ],
        ),
      ),

    );
  }
}
