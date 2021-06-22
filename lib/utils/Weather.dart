import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';
import 'location.dart';

const apiKey = "64a7a4de2f785dbe685297dc7f97748a";
//görüntülenecek verileri tutuyoruz.
class WeatherDisplayData{
  Icon weatherIcon;
  AssetImage weatherImage;

  WeatherDisplayData({@required this.weatherIcon, this.weatherImage});
}


class WeatherData{
  WeatherData({@required this.locationData});

  LocationHelper locationData;
  double currentTemperature;
  //o anki sıcaklık
  int currentCondition;
  //o anki durum
  String city;
//o anki sıcaklığı çağır.
  Future<void> getCurrentTemperature() async{
    Response response = await get("http://api.openweathermap.org/data/2.5/weather?lat=37.021799&lon=27.254501&appid=64a7a4de2f785dbe685297dc7f97748a&units=metric");

    if(response.statusCode == 200){
      //gelen değeri okuma
      String data = response.body;
      //o anki sıcaklığı json olarak al.
      var currentWeather = jsonDecode(data);

      try{
        currentTemperature = currentWeather['main']['temp'];
        currentCondition = currentWeather['weather'][0]['id'];
        city = currentWeather['name'];
      }catch(e){
        print(e);
      }

    }
    else{
      print("API den değer gelmiyor!");
    }

  }

  WeatherDisplayData getWeatherDisplayData(){
    if(currentCondition <600){
      //hava bulutlu
      return WeatherDisplayData(
          weatherIcon: Icon(
              FontAwesomeIcons.cloud,
              size: 75.0,
              color:Colors.white
          ),
          weatherImage: AssetImage('assets/fotograflar/bulutluhava.png'));
    }
    else{
      //hava iyi
      //gece gündüz kontrolü
      var now = new DateTime.now();
      if(now.hour >=19){
        return WeatherDisplayData(
            weatherIcon: Icon(
                FontAwesomeIcons.moon,
                size: 75.0,
                color:Colors.white
            ),
            weatherImage: AssetImage('assets/fotograflar/gecehava.png'));
      }else{
        return WeatherDisplayData(
            weatherIcon: Icon(
                FontAwesomeIcons.sun,
                size: 75.0,
                color:Colors.white
            ),
            weatherImage: AssetImage('assets/fotograflar/guneslihava.png'));

      }
    }
  }


}