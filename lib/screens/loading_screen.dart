import 'package:flutter/material.dart';
import 'package:flutter_appdegisim/screens/main_screen.dart';
import 'package:flutter_appdegisim/utils/Location.dart';
import 'package:flutter_appdegisim/utils/Weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  LocationHelper locationData;
  //konum bilgilerini getiriyoruz.
  Future<void> getLocationData() async{
    locationData = LocationHelper();
    await locationData.getCurrentLocation();
    // değer boşsa ya da longitude boş ise yazı yazdır.geliyorsada else ile yazdır.
    if(locationData.latitude == null || locationData.longitude == null){
      print("Konum bilgileri gelmiyor.");

    }
    else{
      print("latitude: " + locationData.latitude.toString());
      print("longitude: " + locationData.longitude.toString());
    }

  }

  void getWeatherData() async {
    await getLocationData();

    WeatherData weatherData = WeatherData(locationData: locationData);
    await weatherData.getCurrentTemperature();
    //weatherin içindeki değeri çağırdık ve kontrol ediyoruz.

    if(weatherData.currentTemperature == null ||
        weatherData.currentCondition == null){
      print("API den sıcaklık veya durum bilgisi boş dönüyor.");
    }
 // değer boş dönmüyorsa mainscreene git.
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
      return MainScreen(weatherData: weatherData,);
    }));


  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getWeatherData();
 //initsited ile locationData çağırdık.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.blue]
          ),
        ),
        child: Center(
          child: SpinKitFadingCircle(
            color: Colors.white,
            size: 150.0,
            duration: Duration(milliseconds: 1200),
          ),
        ),
      ),
    );
  }
}

