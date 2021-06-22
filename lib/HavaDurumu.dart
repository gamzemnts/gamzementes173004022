import 'package:flutter/material.dart';
import 'package:flutter_appdegisim/screens/loading_screen.dart';

class HavaDurumu extends StatefulWidget {
  @override
  _HavaDurumuState createState() => _HavaDurumuState();
}

class _HavaDurumuState extends State<HavaDurumu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BODRUM HAVA DURUMU",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
