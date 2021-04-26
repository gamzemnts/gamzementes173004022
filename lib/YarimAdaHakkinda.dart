import 'package:flutter/material.dart';

class YarimAdaHakkinda extends StatefulWidget {
  @override
  _YarimAdaHakkindaState createState() => _YarimAdaHakkindaState();
}

class _YarimAdaHakkindaState extends State<YarimAdaHakkinda> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent[50],
          title: Text("BODRUM YARIM ADASI"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                color: Colors.cyanAccent, width: 900, height: 150,
                child: Column(
                  children: [
                    Text(""),
                    Text("Muğla’nın en popüler ve en turistik ilçelerinden biri olan Bodrum, güzel plajları, tarihi kalıntıları,",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal, fontSize: 15,),),
                    Text("rengarenk gece hayatı ve tatil köyleri ile Ege’nin bir mücevheridir. Yazlıkçıların, turistlerin ve ünlülerin",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal, fontSize: 15,),),
                    Text("en çok tercih ettiği yerlerden biridir Bodrum. Çiçeklerle süslenmiş, beyaz ve turkuaz rengi duvarlarıyla",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal, fontSize: 15,),),
                    Text("boyalı sokaklarnıda dolaşırken, kendinizi bambaşka bir yerdeymiş gibi hissedeceksiniz. Arnavut kaldırımları,",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal, fontSize: 15,),),
                    Text(" muhteşem restoranları, yemyeşil doğası ve harika manzarasıyla Bodrum, herkesin bir kez olsun gitmek isteyeceği yerlerden biri…",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal, fontSize: 15,),),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                      padding:const EdgeInsets.only(left: 200.0,),
                        child: Container(
                          color: Colors.cyanAccent, width: 900, height: 200,
                          child: Column(
                            children: [
                              Image.asset('resimdosyalari/images/Bodrumsokak.jpg',width: 900, height: 190,),
                            ],
                          ),
                        ),
                  )
                ],
              ),
              Container(color: Colors.cyanAccent, width: 900, height: 150,
                child: Column(
                  children: [
                    Text(""),
                    Text("Kaç Günde Gezilir? Bodrum’u 4-5 günde gezebilmeniz mümkün. Ziyaret İçin En İyi Zaman? Bodrum, her",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal, fontSize: 15,),),
                    Text("mevsim ziyaret etmek için uygundur. Ancak kalabalıktan çok hoşlanmıyorsanız, ilkbahar ya da sonbahar",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal, fontSize: 15,),),
                    Text("aylarında gelmeyi tercih edebilirsiniz. Türkiye’nin birçok şehrinde geçerli olan Müzekart, Kültür",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal, fontSize: 15,),),
                    Text("Bakanlığı’na bağlı tüm müzelerde ücretsiz giriş yapma imkanı tanıyor. Milas Bodrum Havalimanı, Bodrum",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal, fontSize: 15,),),
                    Text("merkeze 35 km mesafede yer alıyor ve Havaş ulaşım araçları ile merkeze kolaylıkla ulaşım sağlayabiliyorsunuz.",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal, fontSize: 15,),),
                    Text("BODRUM TÜM GÜZELLİKLERİYLE SİZİ BEKLİYOR..",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal, fontSize: 15, fontStyle: FontStyle.italic),),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 460.0,),
                    child: Container(
                      color: Colors.cyanAccent, width: 900, height: 190,
                      child: Column(
                        children: [
                          Image.asset('resimdosyalari/images/bodrummerkez.png',width: 900, height: 185,),
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
    );
  }
}
