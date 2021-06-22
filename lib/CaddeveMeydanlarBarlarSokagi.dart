import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 class CaddeveMeydanlarBarlarSokagi extends StatefulWidget {
  @override
  _CaddeveMeydanlarBarlarSokagiState createState() => _CaddeveMeydanlarBarlarSokagiState();
}

class _CaddeveMeydanlarBarlarSokagiState extends State<CaddeveMeydanlarBarlarSokagi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent[50],
          title: Text("CADDE VE MEYDANLAR/BARLAR SOKAĞI"),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(30.0),
          width: 900,
          height: 700,
          decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
              color: Colors.white,
              width: 5.0,
            ),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
                ),
                Text("Burası neresi? Gümbet Mahallesi’nde yer alan Barlar Sokağı, bir diğer adıyla bilinen Gümbet Barlar Sokağı,",
                  style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal, color: Colors.black,fontStyle: FontStyle.italic ),),
                Text(" yerli ve yabancı birçok turistin akın ettiği yerlerden biridir. Özellikle daha çok ünlülerin bulunduğu bu yerde, ",
                  style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal, color: Colors.black,fontStyle: FontStyle.italic ),),
                Text("gece ve gündüz her saat diliminde eğlencenin tadını çıkarabilirsiniz. Neden gitmeliyim? Rengarenk",
                  style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal, color: Colors.black,fontStyle: FontStyle.italic ),),
                Text("ve ışıl ışıl bir ortama sahip olan Barlar Sokağı, restoranların, kafelerin, satıcıların, barların, diskoların ve ünlü",
                  style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal, color: Colors.black,fontStyle: FontStyle.italic ),),
                Text("sanatçıların çıktığı mekanları ile dolu bir yerdir. Barlar Sokağı’nda yürümeye başladığınız andan itibaren yavaşça artan,",
                  style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal, color: Colors.black,fontStyle: FontStyle.italic ),),
                Text("müziğin atmosferine kapılacak ve kendinizi biran önce bu mekanlardan birine atacaksınız.",
                  style: TextStyle (fontSize: 17, fontWeight: FontWeight.normal, color: Colors.black,fontStyle: FontStyle.italic ),),
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 100.0,),
                      child: Container(width: 600, height: 400, color: Colors.yellow,
                        child:Row(
                          children: [
                            Image.asset('resimdosyalari/images/caddevemeydanlar.jpg', width: 600, height: 400,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),


    );
  }
}
