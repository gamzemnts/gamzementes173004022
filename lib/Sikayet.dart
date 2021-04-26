import 'package:flutter/material.dart';

class Sikayet extends StatefulWidget {
  @override
  _SikayetState createState() => _SikayetState();
}

class _SikayetState extends State<Sikayet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent[50],
          title: Text("MEMNUNİYET/ŞİKAYET KUTUSU"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            TextField(
              autofocus: true,
              autocorrect: true,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 15,),
              cursorColor: Colors.red,
              cursorRadius: Radius.circular(11.0),
              maxLength: 50,
              maxLines: 5,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Şikayet ve memnuniyetinizi bu alana yazıp gönderebilirsiniz.',
              ),
            ),
            FloatingActionButton(
              child: Icon(Icons.arrow_forward),
              elevation: 15,
              backgroundColor: Colors.red,
              onPressed: (){
              },

               ),
          ],
        ),
      ),
    );
  }
}
