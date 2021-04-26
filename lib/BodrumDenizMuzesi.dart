import 'package:flutter/material.dart';

 class BodrumDenizMuzesi extends StatefulWidget {
  @override
  _BodrumDenizMuzesiState createState() => _BodrumDenizMuzesiState();
}

class _BodrumDenizMuzesiState extends State<BodrumDenizMuzesi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent[50],
          title: Text("BODRUM DENİZ MÜZESİ"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0,left: 10.0),
              child: Container(width: 800, height: 200, color: Colors.lightGreenAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Burası neresi? Bodrum Deniz Müzesi, ilk olarak 2010 yılında Bodrum Kalesi’nin önüne kurulan",
                      style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal, color: Colors.blue ),),
                    Text("bir çadır içerisinde eserlerini sergiliyordu. Daha sonra Bodrum Belediyesi’nin katkılarıyla,",
                      style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal, color: Colors.blue),),
                    Text("eski bedesten binası tahsil edilerek müze olarak yeniden halka açıldı. Müzede sergilenen eserler",
                      style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal, color: Colors.blue),),
                    Text("arasında; Bodrum tipi tekne modelleri ve birçok farklı yerden toplanan deniz kabukları yer alıyor.",
                      style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal,color: Colors.blue ),),
                    Text("Bu eserler dışında, Halikarnas balıkçısı Cevat Şakir Kabaağaçlı’ya ait özel eşyalar, fotoğraflar",
                      style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal, color: Colors.blue),),
                    Text(" ve tarihi belgeler sergileniyor. Aynı zamanda müzede sürekli olarak seminerler düzenleniyor.",
                      style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal,color: Colors.blue ),),
                  ]
                ),
              ),
            ),
               Column(
                 children: [
                   Padding(
                       padding: const EdgeInsets.only(left: 50.0),
                     child: Container(width: 450, height: 350, color: Colors.lightBlueAccent[100],
                       child: Row(
                         children: [
                           Image.asset('resimdosyalari/images/denizmuzesi.jpg', width: 450, height: 350,)
                         ],
                       ),
                     ),
                   )
                 ],
               ),
                Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(top: 10.0, bottom: 05.0, left: 300.0),
                        child: Container(width: 420, height: 120, color: Colors.lightGreenAccent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Adres: Çarşı, No.4/1, Nazım Hikmet Sk., 48400 Bodrum/Muğla", style: TextStyle(fontSize: 15, color: Colors.blue,
                                  decoration: TextDecoration.underline, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                              Text("Çalışma saatleri: 09.00 – 19.00", style: TextStyle(fontSize: 15, color: Colors.blue,
                                  decoration: TextDecoration.underline, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                              Text("Telefon: (0252) 316 33 10", style: TextStyle(fontSize: 15, color: Colors.blue,
                                  decoration: TextDecoration.underline, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                              Text("Giriş ücreti: Ücretsiz", style: TextStyle(fontSize: 15, color: Colors.blue,
                                  decoration: TextDecoration.underline, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                              Text(""),
                            ],
                          ),
                        ) ,
                      ),
                    ],
            ),
          ],
        ),
      ),

    );
  }
}
