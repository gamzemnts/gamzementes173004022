import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TuzlaKusCenneti extends StatefulWidget {
  @override
  _TuzlaKusCennetiState createState() => _TuzlaKusCennetiState();
}

class _TuzlaKusCennetiState extends State<TuzlaKusCenneti> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent[50],
          title: Text("BODRUM TUZLA KUŞ CENNETİ"),
          centerTitle: true,
        ),
        body: Center(
           child:Column(
             children: [
             Expanded(child: Container(
              child: Text("""" Bodrum Tuzla Kuş Cenneti’nde; allı turna, meke, yaban kazı gibi daha pek çok
               sayıdaki farklı kuş türünü, yakından inceleme şansı yakalayabilirsiniz. Ayrıca tüm bu kuşlar
                içerisinde en dikkat çekenin flamingolar olduğunu da belirtmeliyiz.""",
                style: TextStyle (fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.black ),),
               width: MediaQuery.of(context).size.width -60.0,
               height: 100.0,
               decoration: BoxDecoration(
                 color: Colors.blue,
                 borderRadius: BorderRadius.circular(30.0),
               ),
            ),
            ),
               Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Image.asset('resimdosyalari/images/tuzlakuscenneti.jpg', width: 200, height: 250,),
                   ],
                 ),
                 width: MediaQuery.of(context).size.width -60.0,
                 height: 200.0,
                 decoration: BoxDecoration(
                   color: Colors.blue,
                   borderRadius: BorderRadius.circular(30.0),
                 ),
               ),
               Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("""Adres: Dörttepe, Muğla Bodrum Yolu,
                      48670 Milas/Muğla, Çalışma saatleri: 7/24,
                       Giriş ücreti: Ücretsiz""", style: TextStyle (fontSize: 15, fontWeight: FontWeight.bold,
                         fontStyle: FontStyle.italic, color: Colors.black ),),
                   ],
                 ) ,
               ),
             ],
        ),
      ),
    ),
    );
  }
}
