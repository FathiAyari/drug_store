import 'package:drug_store/screens/home_screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';

class VerifyOTP extends StatefulWidget {
  const VerifyOTP({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<VerifyOTP> {
  TextEditingController code1Controller = TextEditingController();
  TextEditingController code2Controller = TextEditingController();
  TextEditingController code3Controller = TextEditingController();
  TextEditingController code4Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Constants.bgColor,
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: Constants.screenHeight * 0.3,
                width: Constants.screenWidth * 0.7,
              ),
              Padding(
                padding: EdgeInsets.only(top: Constants.screenHeight * 0.1, bottom: Constants.screenHeight * 0.05),
                child: Text(
                  "Soumettez le code à 4 chiffres que vous avez obtenu sur votre numéro fourni.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Constants.otpTextColor, fontSize: 15),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CodeVerification(
                    controller: code1Controller,
                  ),
                  CodeVerification(
                    controller: code2Controller,
                  ),
                  CodeVerification(
                    controller: code3Controller,
                  ),
                  CodeVerification(
                    controller: code4Controller,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: Constants.screenHeight * 0.06),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)), primary: Constants.btnColor),
                    onPressed: () {
                      Get.to(Home());
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
                      child: Text("Vérifier"),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: Constants.screenHeight * 0.01, bottom: Constants.screenHeight * 0.01),
                child: Text(
                  "Vous n'avez pas reçu d'OTP? Renvoyer",
                  textAlign: TextAlign.center,
                  style: TextStyle(decoration: TextDecoration.underline, color: Constants.otpTextColor, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class CodeVerification extends StatelessWidget {
  TextEditingController controller;
  CodeVerification({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        height: Constants.screenHeight * 0.07,
        width: Constants.screenWidth * 0.15,
        child: TextFormField(
          controller: controller,
          maxLength: 1,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black87,
          ),
          textInputAction: TextInputAction.next,
          onChanged: (_) {
            FocusScope.of(context).nextFocus();
          },
          decoration: InputDecoration(
            border: InputBorder.none,
            counterText: "",
            hintStyle: TextStyle(
              color: Colors.indigo,
              fontFamily: "NunitoBold",
            ),
          ),
        ),
      ),
    );
  }
}
