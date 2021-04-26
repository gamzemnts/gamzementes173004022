import 'package:flutter/material.dart';

class ZekiMurenSanatMuzesi extends StatefulWidget {
  @override
  _ZekiMurenSanatMuzesiState createState() => _ZekiMurenSanatMuzesiState();
}

class _ZekiMurenSanatMuzesiState extends State<ZekiMurenSanatMuzesi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent[50],
          title: Text("ZEKİ MÜREN SANAT MÜZESİ"),
           centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                color: Colors.lightBlueAccent[100], width: 500, height: 300,
                child: Image.asset('resimdosyalari/images/zekimuren.jpg', width: 300, height: 300,),
              ),
              Container(color: Colors.lightBlueAccent[100], width: 700, height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Burası neresi? Sanat güneşimiz Müzikleri ile bilinen Zeki Müren, hayatının son", style: TextStyle (fontSize: 17, fontWeight: FontWeight.bold ),),
                  Text("dönemlerini Bodrum’daki iki katlı evinde geçiriyordu. Zeki Müren vefat ettikten", style: TextStyle (fontSize: 17, fontWeight: FontWeight.bold ),),
                  Text("sonra, yaşadığı bu ev müzeye dönüştürüldü ve Zeki Müren Sanat Müzesi olarak faaliyet", style: TextStyle (fontSize: 17, fontWeight: FontWeight.bold ),),
                  Text("göstermeye başladı. Neden gitmeliyim? Müzenin ön bahçesinde; Zeki Müren’in arabası", style: TextStyle (fontSize: 17, fontWeight: FontWeight.bold ),),
                  Text("ve bronz heykeli bulunuyor, üst katında ise; sahne kostümleri, takıları, tabloları,", style: TextStyle (fontSize: 17, fontWeight: FontWeight.bold ),),
                  Text("ödülleri, fotoğrafları ve bunun gibi kişisel eşyalar sergileniyor. Aynı zamanda", style: TextStyle (fontSize: 17, fontWeight: FontWeight.bold ),),
                  Text("hayranlarından gelen mektuplara bile bu müzede rastlayabiliyorsunuz.", style: TextStyle (fontSize: 17, fontWeight: FontWeight.bold ),),
                ],
              ),
              ),
              Container(color: Colors.lightBlueAccent[100], width: 700, height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Adres: Kumbahçe, Zeki Müren Cd. No:11, 48400 Bodrum/Muğla", style: TextStyle(fontSize: 15, color: Colors.red,
                        decoration: TextDecoration.underline, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                    Text("Çalışma saatleri: Yaz: 08.00 – 19.00 / Kış: 08.00 – 17.00 **Pazartesi günleri kapalı", style: TextStyle(fontSize: 15, color: Colors.red,
                        decoration: TextDecoration.underline, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                    Text("Telefon: (0252) 313 19 39",style: TextStyle(fontSize: 15, color: Colors.red, decoration: TextDecoration.underline, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                    Text("Giriş ücreti: 5₺",style: TextStyle(fontSize: 15, color: Colors.red, decoration: TextDecoration.underline, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),


                  ],
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}

