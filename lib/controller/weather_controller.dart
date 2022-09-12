import 'dart:convert';

import 'package:get/get.dart';
import 'package:wether/model/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherController extends GetxController{
  WeatherModel? weather;


  Future<WeatherModel>? getCurrentWeather(String? location) async {
    var endPoint = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$location&appid=ffde1e5c02de7dc2c13608adae821ab3");
  
    var response = await http.get(endPoint);
    var body = jsonDecode(response.body);
    // var res = weather.fromJson(body);
    print('response body weather = ${response.body}');

    return WeatherModel.fromJson(body);
  }
}