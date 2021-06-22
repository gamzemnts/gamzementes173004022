import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Turlarimiz extends StatefulWidget {
  @override
  _TurlarimizState createState() => _TurlarimizState();
}

class _TurlarimizState extends State<Turlarimiz> {
  var formKey = GlobalKey<FormState>();
  var tfUsername = TextEditingController();
  var tfEposta = TextEditingController();
  var tfTelefonNumarasi= TextEditingController();
  var tfDate =TextEditingController();
  var tfTime = TextEditingController();
  var tfAdres = TextEditingController();
  String data = "";
  bool karaAdaDurum = false;
  bool karaincirDurum = false;
  bool maziDurum = false;
  bool oraklarAdasiDurum = false;
  bool akvaryumDurum = false;
  String kisiSayisi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text("MAVİ YOLCULUK"),
      ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
             color: Colors.cyanAccent,
             height: 100,
             child: Column(
               children: [
                 Text("GÜNÜ BÜRLİK TEKNE TURU"),
                 Text("""Bodrum Türkiye deki en popüler tekne turlarına ev sahipliği yapmaktadır.
                      Aynı gün icinde Egenin en temiz sularında 5 değişik koyda yüzme, şnorkel ve
                      güneşlenme tekne turlarımızda mümkün."""),
               ],
             ),
           ),
           Divider(
             thickness: 5,
             indent: 20,
             endIndent: 20,
             color: Colors.black,
             height: 50.0,
           ),
           Column(
             children: [
               Form(
                 key: formKey,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                     children: [
                       TextFormField(
                         controller: tfUsername,
                         decoration: InputDecoration(hintText: "İsim Soyisim"),
                         validator: (tfdata){
                            if(tfdata.isEmpty){
                             return "Lütfen isim soyisim giriniz";
                           }
                           return null;
                         },
                       ),
                       TextFormField(
                         controller: tfEposta,
                         decoration: InputDecoration(hintText: "E-posta"),
                         validator: (tfdata){
                           if(tfdata.isEmpty){
                             return "Lütfen e-posta adresiniz giriniz";
                           }
                           return null;
                         },
                       ),
                       TextFormField(
                         controller: tfTelefonNumarasi,
                         decoration: InputDecoration(hintText: "Telefon Numarası"),
                         validator: (tfdata){
                           if(tfdata.isEmpty){
                             return "Lütfen Telefon Numaranızı giriniz";
                           }
                           return null;
                         },
                       ),
                       TextField(
                         controller: tfDate,
                         decoration: InputDecoration(
                           hintText: "Tarih Giriniz",
                         ),
                         onTap: (){
                           showDatePicker(
                               context: context,
                               initialDate: DateTime.now(),
                               firstDate: DateTime(2021),
                               lastDate: DateTime(2023),
                           ).then((dateData) {
                             setState(() {
                               tfDate.text = "${dateData.day}/${dateData.month}/${dateData.year}";
                             });
                           });
                         },
                       ),
                       TextFormField(
                         controller: tfTime,
                         decoration: InputDecoration(hintText: "Saat Giriniz"),
                         onTap: (){
                           showTimePicker(
                               context: context,
                               initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                           ).then((timeDate) {
                             setState(() {
                               tfTime.text = "${timeDate.hour} : ${timeDate.minute}";
                             });
                           });
                         },
                       ),
                       TextFormField(
                         controller: tfAdres,
                         decoration: InputDecoration(hintText: "Adres"),
                         validator: (tfdata){
                           if(tfdata.isEmpty){
                             return "Lütfen adres bilgilerinizi giriniz giriniz";
                           }
                           return null;
                         },
                       ),
                   DropdownButton<String>(
                     value: kisiSayisi,
                     style: TextStyle(color: Colors.black),
                     items: <String>[
                       'İki',
                       'Üç',
                       'Dört',
                       'Beş',
                       'Altı',
                       'Yedi',
                       'Sekiz',
                       'Dokuz',
                       'On',
                     ].map<DropdownMenuItem<String>>((String value) {
                       return DropdownMenuItem<String>(
                         value: value,
                         child: Text(value),
                       );
                     }).toList(),
                     hint: Text(
                       "Lütfen kişi Sayısı Seçiniz",
                       style: TextStyle(
                           color: Colors.red,
                           fontSize: 16,
                           fontWeight: FontWeight.w600),
                     ),
                     onChanged: (String value) {
                       setState(() {
                         kisiSayisi= value;
                       });
                     },
                   ),

                       CheckboxListTile(
                         title: Text ("Kara Ada"),
                         value: karaAdaDurum,
                         controlAffinity: ListTileControlAffinity.leading,
                         checkColor:  Colors.white,
                         activeColor: Colors.cyanAccent,
                         onChanged: (bool veri) {
                           setState(() {
                             karaAdaDurum = veri;
                           });
                         },
                       ),
                       CheckboxListTile(
                         title: Text ("Kara İncir"),
                         value: karaincirDurum,
                         controlAffinity: ListTileControlAffinity.leading,
                         checkColor:  Colors.white,
                         activeColor: Colors.cyanAccent,
                         onChanged: (bool veri) {
                           setState(() {
                             karaincirDurum = veri;
                           });
                         },
                       ),
                       CheckboxListTile(
                         title: Text ("Mazı"),
                         value: maziDurum,
                         controlAffinity: ListTileControlAffinity.leading,
                         checkColor:  Colors.white,
                         activeColor: Colors.cyanAccent,
                         onChanged: (bool veri) {
                           setState(() {
                             maziDurum = veri;
                           });
                         },
                       ),
                       CheckboxListTile(
                         title: Text ("Oraklar Adası"),
                         value: oraklarAdasiDurum,
                         controlAffinity: ListTileControlAffinity.leading,
                         checkColor:  Colors.white,
                         activeColor: Colors.cyanAccent,
                         onChanged: (bool veri) {
                           setState(() {
                             oraklarAdasiDurum = veri;
                           });
                         },
                       ),
                       CheckboxListTile(
                         title: Text ("Akvaryum"),
                         value: akvaryumDurum,
                         controlAffinity: ListTileControlAffinity.leading,
                         checkColor:  Colors.white,
                         activeColor: Colors.cyanAccent,
                         onChanged: (bool veri) {
                           setState(() {
                             akvaryumDurum = veri;
                           });
                         },
                       ),
                       ElevatedButton(
                         child: Text("Rezarvasyonu Yap"),
                         onPressed: (){
                         },
                       ),
                       Divider(
                         thickness: 5,
                         indent: 20,
                         endIndent: 20,
                         color: Colors.black,
                         height: 50.0,
                       ),
                     ],
                   ),
                 ),
               ),
             ],
           ),
         ],
       ),
     ),
    );
  }
}
