import 'dart:math';

import 'package:animator/Screens/HomeScreen/controller/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class PlanetViewPage extends StatefulWidget {
  const PlanetViewPage({Key? key}) : super(key: key);

  @override
  State<PlanetViewPage> createState() => _PlanetViewPageState();
}

class _PlanetViewPageState extends State<PlanetViewPage> with TickerProviderStateMixin {
  HomeController homeController = Get.put(HomeController());
  AnimationController? animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 12))..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                    child: Container(
                      child: Stack(
                        children: [
                          Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset("${homeController.h1.value.view_image}",fit: BoxFit.fitHeight,)
                          )
                        ],
                      ),
                    )
                ),
                Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: Color(0XFF3E3963),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 15.h,left: 7.5.w),
                            child: Text(
                              "OVERVIEW",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21.sp,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Container(
                            height: 0.3.h,
                            width: 12.w,
                            margin: EdgeInsets.only(top: 0.1.h,left: 7.5.w),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                          Container(
                            height: 25.h,
                            width: 85.w,
                            margin: EdgeInsets.only(top: 1.5.h,left: 7.5.w),
                            // color: Colors.red,
                            child: Text(
                              "${homeController.h1.value.overview}",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12.sp
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                ),
              ],
            ),
            Center(
              child: Container(
                height: 25.h,
                width: 85.w,
                decoration: BoxDecoration(
                    color: Color(0XFF424171),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 15,
                          offset: Offset(0,0)
                      )
                    ]
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 9.h),
                      child: Text(
                        "${homeController.h1.value.name}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 21.sp,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Text(
                      "Milkyway Glaxey",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Container(
                      height: 0.3.h,
                      width: 12.w,
                      margin: EdgeInsets.only(top: 1.h),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.5.h,left: 15.w),
                      child: Row(
                        children: [
                          Container(
                              height: 3.h,
                              width: 3.h,
                              child: Image.asset("assets/image/ic_distance.png")
                          ),
                          SizedBox(width: 2.w,),
                          Text(
                            "${homeController.h1.value.distance} km",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10.sp
                            ),
                          ),
                          SizedBox(width: 6.w,),
                          Container(
                              height: 3.h,
                              width: 3.h,
                              child: Image.asset("assets/image/ic_gravity.png")
                          ),
                          SizedBox(width: 2.w,),
                          Text(
                            "${homeController.h1.value.gravity} m/s²",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10.sp
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                  padding:  EdgeInsets.only(bottom: 25.h),
                  child: AnimatedBuilder(
                    animation: animationController!,
                    child: Container(
                      height: 15.h,
                      width: 15.h,
                      child: Image.asset("${homeController.h1.value.image}"),
                    ),
                    builder: (context, child) {
                      return Transform.rotate(
                        angle: animationController!.value*2*pi,
                        child: child,
                      );
                    },
                  )
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: (){
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height,
                        color: Color(0XFF3E3963),
                        child: Column(
                          children: [
                            Container(
                              height: 9.h,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Colors.blue.shade800,
                                        Colors.blue.shade300,
                                      ]
                                  ),
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "WELCOME TO ${homeController.h1.value.name}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            SizedBox(height: 3.h,),
                            Container(
                                height: 15.h,
                                width: 15.h,
                                child: Image.asset("${homeController.h1.value.image}")
                            ),
                            SizedBox(height: 3.h,),
                            Text(
                              "Distance To Sun",
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 15.sp
                              ),
                            ),
                            SizedBox(height: 1.5.h,),
                            Text(
                              "${homeController.h1.value.distance_sun} km",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.sp
                              ),
                            ),
                            SizedBox(height: 3.h,),
                            Text(
                              "Distance To Earth",
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 15.sp
                              ),
                            ),
                            SizedBox(height: 1.5.h,),
                            Text(
                              "${homeController.h1.value.distance_earth} km",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.sp
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  height: 9.h,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.blue.shade800,
                            Colors.blue.shade300,
                          ]
                      ),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 30.w,
                        margin: EdgeInsets.only(left: 7.5.w,top: 1.5.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "START FROM",
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 12.sp
                              ),
                            ),
                            Text(
                              "\$2.8m",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21.sp
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 6.h,
                        child: Row(
                          children: [
                            Text(
                              "BOOK NOW",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 18.sp
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios,color: Colors.white70,size: 21,),
                            SizedBox(width: 6.w,),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
