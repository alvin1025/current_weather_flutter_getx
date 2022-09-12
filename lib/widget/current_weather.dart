import 'package:flutter/material.dart';
import 'package:wether/style/theme.dart';

Widget currentWeather(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.orange,
          size: 64.0,
        ),
        SizedBox(height: 10),
        Text("$temp", style: secondaryTextStyle.copyWith(fontSize: 46, fontWeight: light),),
        SizedBox(height: 10),
        Text("$location", style: lightGreyTextStyle.copyWith(fontSize: 18, fontWeight: light),)
      ],
    ));
}
