import 'package:flutter/material.dart';
import 'package:flutter_appdegisim/Restaurantalar.dart';
import 'dart:math' as math;

class Bodrumyemekleri extends StatefulWidget {
  @override
  _BodrumyemekleriState createState() => _BodrumyemekleriState();
}

class _BodrumyemekleriState extends State<Bodrumyemekleri> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent[50],
          title: Text("BODRUM YEMEKLERİ"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            color: Colors.lightGreenAccent,
            width: 100, height: 100,
            child: Column(
              children: [
                Padding(padding: const EdgeInsets.all(5.0),
                  child: Container(
                    color: Colors.white,
                    child: new GestureDetector(
                      child: new Text("KABAK ÇİÇEĞİ DOLMASI"),
                      onTap: (){
                        ScaffoldMessenger.of(context).showSnackBar(
                            new SnackBar(content: new Text("""Genelde zeytinyağlı yapılan kabak çiçeği dolması, "
                                "Ege Bölgesinin birçok ilinde farklı şekillerde yapılsa da iç harcının ana malzemeleri "
                                "genel olarak pirinç ve dereotudur. Nerede Yenir: https://www.instagram.com/kismetlokantasi/
                                Adres: Konacık, Çırkan Mah., Çelebi Kaptan Sk., No: 3/A Çalışma Saatleri: Hafta içi 10:00 – 17:00 
                                saatleri arasında açıktır. Hafta sonları kapalıdır. Telefon: 0252 319 00 96 """)));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.red,
                    child: new GestureDetector(
                      child: new Text('BİTEZ DONDURMASI'),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            new SnackBar(content: new Text("Bitez dondurması… Yirmiden fazla çeşidi olan ve şeker ilavesiz,"
                                " %100 organik meyvelerden yapılan Bitez dondurması, her damak zevkine hitap eden çeşitleri ile fark yaratıyor."
                                 "Nerede Yenir: https://www.instagram.com/bitezdondurma/ "
                                 " Adres:  Bitez, Adliye Cad., No: 48. Telefon: 0252 363 93 45")));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.blue,
                    child: new GestureDetector(
                      child: new Text('KEFAL DOLMASI İÇİN ÇİFT TIKLA'),
                      onDoubleTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            new SnackBar(content: new Text("""Muğla’ya gidenlerin mutlaka tatması gereken lezzet, kefalin içerisinin pirinçli "
                                iç harcı ile doldurulması ile hazırlanıyor. İçerisinde, pirinç, soğan, nane, dereotu,
                                maydanoz ve çeşitli baharatlar bulunan kefal dolması, farklı bir lezzet arayanlar için oldukça ideal.
                                 Nerede Yenir: Kefal dolmasını Bodrum’da yöresel yemekler menüsüne sahip bazı lokanta ve restoranlarda
                                 bulabilmeniz mümkündür. Fiyat Aralığı: Orta Seviye""")));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.blue,
                    child: new GestureDetector(
                      child: new Text('ACI OT (SARMAŞIK) KAVURMASI İÇİN ÇİFT TIKLA '),
                      onDoubleTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            new SnackBar(content: new Text("""Yöre halkı tarafında sabah yürüyüşlerinde toplanabilen taze otlar, "
                                "her köşede bulunur. Temizlenen otlar zeytinyağında bol soğanla kavrulur ve üzerine yumurta kırılır. "
                                "İsteğe göre üzerine yoğurt dökülerek de tüketilebilir.
                                Nerede Yenir: Çoğunlukla evlerde yapılan acı ot sarmaşık kavurmasının tarifini alarak sizler de evlerinizde yapabilirsiniz.""")));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.red,
                    child: new GestureDetector(
                      child: new Text("ÇÖKERTME KEBABI(Bodrum Kebabı) ÇİFT TIKLA"),
                      onDoubleTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            new SnackBar(content: new Text("""Bodrum’da genellikle özel günlerin vazgeçilmez yemeğidir. "
                                "İncecik patates kızartması üzerine sarımsaklı yoğurt ve onun üzerine de tereyağı ve salça "
                                "ile sosla kapsanmış dana etleri eklenir. Dana eti sevmeyenler için tavuklusu da yapılır."
                                " Bodrum’da kebap denilince akla ilk gelen isim olan çökertme kebabını denemeden Bodrum’dan"
                                " ayrılmamanızı tavsiye ederiz. Nerede Yenir: https://www.instagram.com/kebap.guru/ 
                                 Fiyat Aralığı: Orta Seviye. 
                                 Adres: Kumbahçe Mah., Yolcu Limanı, İskele Cad., No: 15
                                 Çalışma Saatleri: Haftanın tüm günü 13:00 – 00:00 saatlerinde açıktır.
                                 Telefon: 0530 954 27 27""")));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.red,
                    child: new GestureDetector(
                      child: new Text("En Yakın Restorantları Görüntülemek için basılı tutunuz."),
                      onLongPress: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            new SnackBar(content: new ListTile(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Restaaurantlar()));
                                }
                            )));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.red,
                    child: new GestureDetector(
                      child: new Icon(Icons.arrow_circle_up),
                      onHorizontalDragStart: (DragStartDetails dragStartDetails) {
                        setState(() {
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 class buyutme extends StatefulWidget {
   @override
   _buyutmeState createState() => _buyutmeState();
 }

 class _buyutmeState extends State<buyutme> {
   String mesafe= '';

   void _onScaleUpdateHandler(ScaleUpdateDetails details) {
     double deg = details.rotation.abs() * (180 / math.pi);
     setState(() {
       this.mesafe = '${deg.toStringAsFixed(1)}';
     });
   }
   @override
   Widget build(BuildContext context) {
     return GestureDetector(
       onScaleUpdate: _onScaleUpdateHandler,
       child: Container(
         color: Colors.white,
         child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Text(
               'Uzaklık: ${this.mesafe}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w200,
              ),
              ),
              ],
            ),
         ),
       ),

     );
   }
 }

