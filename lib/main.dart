import 'package:animator/Screens/HomeScreen/view/HomePage.dart';
import 'package:animator/Screens/PlanetViewScreen/view/PlanetViewPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main()
{
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/' : (context) => HomePage(),
            'view' : (context) => PlanetViewPage(),
          },
        );
      },
    ),
  );
}