import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Grafik extends StatefulWidget {
  @override
  _GrafikState createState() => _GrafikState();
}

class _GrafikState extends State<Grafik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toplam Beğeni İstatikleri"),
      ),
      body: Container(
        child:PieChart(
          dataMap: {"Beğenenler":65,"Beğenmeyenler":10,"Tepkisiz Kitle":10},
          chartRadius: 300,
          colorList: [Colors.red,Colors.green,Colors.orange],
          chartValuesOptions: ChartValuesOptions(
              chartValueStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,color: Colors.black
              ),
              showChartValueBackground: false,
              showChartValuesInPercentage: true
          ),
          legendOptions: LegendOptions(
              legendTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
              legendPosition: LegendPosition.right,
              showLegends: true
          ),
          animationDuration: Duration(milliseconds: 2000),
        ),
      ),
    );
  }
}
