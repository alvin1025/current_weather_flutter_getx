import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wether/controller/weather_controller.dart';
import 'package:wether/style/theme.dart';
import 'package:wether/widget/additional_information.dart';
import 'package:wether/widget/current_weather.dart';

void main() {
  Get.put(WeatherController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var weatherController = Get.find<WeatherController>();

  Future<void> getData() async {
    weatherController.weather =
        await weatherController.getCurrentWeather("Jakarta");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor6,
        appBar: AppBar(
          backgroundColor: bgColor6,
          elevation: 0.0,
          title: Text(
            'Weather App',
            style: blacktextStyle.copyWith(fontSize: 24, fontWeight: bold),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: black,
          ),
        ),
        body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // for action
                  currentWeather(
                      Icons.sunny,
                      "${weatherController.weather?.temp}°",
                      "${weatherController.weather?.cityName}"),
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    "Additional Information",
                    style: secondaryTextStyle.copyWith(
                        fontSize: 20, fontWeight: semiBold),
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  // Additional Information
                  additionalInformation(
                      "${weatherController.weather?.wind}",
                      "${weatherController.weather?.humidity}",
                      "${weatherController.weather?.pressure}",
                      "${weatherController.weather?.feels_like}"),
                ],
              );
            }

            return Container();
          },
        ));
  }
}
