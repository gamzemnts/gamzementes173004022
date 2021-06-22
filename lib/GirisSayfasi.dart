import 'package:flutter/material.dart';
void main(){
  runApp(GirisSayfasi());
}

class GirisSayfasi extends StatefulWidget {
  @override
  _GirisSayfasiState createState() => _GirisSayfasiState();
}

class _GirisSayfasiState extends State<GirisSayfasi> {
  int ekran =0;
  void onGirisClick(){
    setState(() {
      ekran++;
    });
  }
  void onCikisClick(){
    setState(() {
      ekran--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BODRUM TUR ACENTESİNE HOŞGELDİNİZ"),
        ),
        body: Center(
          child: Column(
            children: [
              CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
              ),
              Text("HOŞGELDİNİZ"),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'KULLANICI ŞİFRENİZ'
                ),
                cursorColor: Colors.red,
                cursorWidth: 15,
                maxLength: 6,
                maxLines: 1,
              ),
              ElevatedButton(
                  onPressed: onGirisClick,
                child:  const Text('Giriş', style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(
                onPressed: onCikisClick,
                child:  const Text('Çıkış', style: TextStyle(fontSize: 20)),
              ),


            ],
          ),
        ),
      ),
    );
  }
}









