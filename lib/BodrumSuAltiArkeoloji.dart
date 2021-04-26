
import 'package:flutter/material.dart';

class BodrumSuAltiArkeoloji extends StatefulWidget {
  @override
  _BodrumSuAltiArkeolojiState createState() => _BodrumSuAltiArkeolojiState();
}

class _BodrumSuAltiArkeolojiState extends State<BodrumSuAltiArkeoloji> {
  @override
    Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent[50],
          title: Text('BODRUM SU ALTI ARKEOLOJİ MÜZESİ'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 200.0,),
              Text(" "),
              Text("Burası neresi? Dünyada önemli ve sayılı müzeler arasında yer alan Bodrum Sualtı Arkeoloji Müzesi,", style: TextStyle (fontSize: 17, fontWeight: FontWeight.bold ),),
              Text("Türkiye’de tek su altı arkeoloji müzesi olma özelliğini taşıyor. Bodrum Kalesi içerisinde yer alan bu" , style: TextStyle (fontSize: 17, fontWeight: FontWeight.bold),),
              Text(" müzede, Bodrum ve çevresindeki kazı çalışmalarından çıkarılan eserler ile birlikte su altı kazı " , style: TextStyle (fontSize: 17, fontWeight: FontWeight.bold),),
              Text("araştırmalarından elde edilen kalıntılar sergileniyor. Müzenin içerisinde 14 adet sergi salonu bulunuyor " , style: TextStyle (fontSize: 17, fontWeight: FontWeight.bold),),
              Text("ve sergilenen eserlerin çoğu amforalardan oluşuyor. Bu amforaların bazıları süngercilik mesleğiyle," , style: TextStyle (fontSize: 17, fontWeight: FontWeight.bold),),
              Text("ilgilenenlerin hediyesidir. Amforalar dışında, müzedeki en önemli parçanın batık gemi kalıntısı olduğunu" , style: TextStyle (fontSize: 17, fontWeight: FontWeight.bold),),
              Text("söyleyebiliriz. 1025 yılında batan bir tekneye ait olan bu batık gemi kalıntısı, Serçe Limanı Cam Batığı" , style: TextStyle (fontSize: 17, fontWeight: FontWeight.bold),),
              Text("Salonu’nda sergileniyor ve dünyanın en eski batık gemi kalıntısı olduğu biliniyor." , style: TextStyle (fontSize: 17, fontWeight: FontWeight.bold),),
              Text(" "),
              Container(
                height: 350, width: 700,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('resimdosyalari/images/sualtiarkeoloji.jpg', width: 700, height: 350,),
                  ],
                ),
              ),
              Text(""),
              Text("ADRES: Çarşı, 48400 Bodrum/Muğla", style: TextStyle(fontSize: 15, color: Colors.red , fontWeight: FontWeight.bold), ),
              Text("ÇALIŞMA SAATLERİ: Yaz: 08.30 – 19.00 / Kış: 08.30 – 18.30 **Pazartesi kapalı", style: TextStyle(fontSize: 15, color: Colors.red, fontWeight: FontWeight.bold),),
              Text("TELEFON: (0252) 316 25 16" , style: TextStyle(fontSize: 15, color: Colors.red, fontWeight: FontWeight.bold),),
              Text("GİRİŞ ÜCRETİ: 30₺" , style: TextStyle(fontSize: 15, color: Colors.red, fontWeight: FontWeight.bold),),
              Text("YOL TARİFİ İÇİN TIKLAYINIZ:", style: TextStyle(fontSize: 15, color: Colors.red, fontWeight: FontWeight.bold),),
              IconButton(icon: Icon(Icons.add_location_alt), color: Colors.deepOrangeAccent, iconSize: 25, onPressed: () {},),

            ],
          ),
        ),
      ),
      
    );
  }
}