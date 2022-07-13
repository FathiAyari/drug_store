import 'package:drug_store/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplasScreenState createState() => _SplasScreenState();
}

class _SplasScreenState extends State<SplashScreen> {
/*  var seen = GetStorage().read("seen");
  var auth = GetStorage().read("auth");*/
  @override
/*
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 4), () => Get.to(seen == 1 ? (auth == 1 ? HomePageContent() : Login()) : OnBoardingPage()));
  }
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.bgColor,
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: Constants.screenHeight * 0.3,
                width: Constants.screenWidth * 0.7,
              ),
              Lottie.asset(
                "assets/images/pharmacy.json",
                height: Constants.screenHeight * 0.2,
              ),
              Lottie.asset(
                "assets/images/loading.json",
                height: Constants.screenWidth * 0.2,
              )
            ],
          ),
        ));
  }
}
