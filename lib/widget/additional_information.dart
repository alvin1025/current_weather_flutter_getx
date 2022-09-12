import 'package:flutter/material.dart';
import 'package:wether/style/theme.dart';

Widget additionalInformation(
    String wind, String humidity, String pressure, String feel_like) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(18),
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Wind",
                    style:
                        blacktextStyle.copyWith(fontSize: 18, fontWeight: bold),
                  ),
                  SizedBox(height: 18,),
                  Text(
                    "Humidity",
                    style:
                        blacktextStyle.copyWith(fontSize: 18, fontWeight: bold),
                  ),
                  SizedBox(height: 18,),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$wind",
                    style:
                        blacktextStyle.copyWith(fontSize: 18, fontWeight: bold),
                  ),
                  SizedBox(height: 18,),
                  Text(
                    "$humidity",
                    style:
                        blacktextStyle.copyWith(fontSize: 18, fontWeight: bold),
                  ),
                  SizedBox(height: 18,),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pressure",
                    style:
                        blacktextStyle.copyWith(fontSize: 18, fontWeight: bold),
                  ),
                  SizedBox(height: 18,),
                  Text(
                    "Feels Like",
                    style:
                        blacktextStyle.copyWith(fontSize: 18, fontWeight: bold),
                  ),
                  SizedBox(height: 18,),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$pressure",
                    style:
                        blacktextStyle.copyWith(fontSize: 18, fontWeight: bold),
                  ),
                  SizedBox(height: 18,),
                  Text(
                    "$feel_like",
                    style:
                        blacktextStyle.copyWith(fontSize: 18, fontWeight: bold),
                  ),
                  SizedBox(height: 18,),
                ],
              ),
            ],
          )
        ]),
  );
}
