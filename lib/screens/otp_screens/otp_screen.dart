import 'package:drug_store/screens/otp_screens/verify_otp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
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
                  "Nous enverrons un message SMS unique. Des tarifs de transporteur peuvent s'appliquer.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Constants.otpTextColor, fontSize: 15),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: Constants.screenHeight * 0.077,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            child: Image.asset(
                              "assets/images/tn.png",
                              height: Constants.screenHeight * 0.03,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Constants.otpTextColor,
                          )
                        ],
                      ),
                    ),
                  ),
                  VerticalDivider(
                    width: 1,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Entrez votre numéro portable",
                        hintStyle: TextStyle(
                          color: Constants.otpTextColor,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: Constants.screenHeight * 0.1),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)), primary: Constants.btnColor),
                    onPressed: () {
                      Get.to(VerifyOTP());
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
                      child: Text("Suivant"),
                    )),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
