import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';

class EditCreditCard extends StatefulWidget {
  const EditCreditCard({Key? key}) : super(key: key);

  @override
  _EditCreditCardState createState() => _EditCreditCardState();
}

class _EditCreditCardState extends State<EditCreditCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Constants.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Ma carte bancaire",
          style: TextStyle(fontFamily: "NunitoBold", color: Constants.otpTextColor),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Constants.otpTextColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo-cb.jpg",
              height: Constants.screenHeight * 0.1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Constants.screenHeight * 0.033),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Prénom",
                        style: TextStyle(decoration: TextDecoration.underline, fontSize: 18),
                      ),
                      Container(
                        width: Constants.screenWidth * 0.3,
                        height: Constants.screenHeight * 0.08,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: Constants.screenHeight * 0.02),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Nour",
                              hintStyle: TextStyle(color: Constants.otpTextColor),
                              filled: true,
                              fillColor: Color(0xffD9D9D9),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nom",
                        style: TextStyle(decoration: TextDecoration.underline, fontSize: 18),
                      ),
                      Container(
                        width: Constants.screenWidth * 0.3,
                        height: Constants.screenHeight * 0.08,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: Constants.screenHeight * 0.02),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "El Houda",
                              hintStyle: TextStyle(color: Constants.otpTextColor),
                              filled: true,
                              fillColor: Color(0xffD9D9D9),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Constants.screenHeight * 0.001, horizontal: Constants.screenWidth * 0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "E-mail",
                    style: TextStyle(decoration: TextDecoration.underline, fontSize: 18),
                  ),
                  Container(
                    height: Constants.screenHeight * 0.08,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: Constants.screenHeight * 0.02),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "noure4676@gmail.com",
                          hintStyle: TextStyle(color: Constants.otpTextColor),
                          filled: true,
                          fillColor: Color(0xffD9D9D9),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Constants.screenHeight * 0.001, horizontal: Constants.screenWidth * 0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Numéro de carte",
                    style: TextStyle(decoration: TextDecoration.underline, fontSize: 18),
                  ),
                  Container(
                    height: Constants.screenHeight * 0.08,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: Constants.screenHeight * 0.02),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "4790101258139078",
                          hintStyle: TextStyle(color: Constants.otpTextColor),
                          filled: true,
                          fillColor: Color(0xffD9D9D9),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Code",
                  style: TextStyle(decoration: TextDecoration.underline, fontSize: 18),
                ),
                Container(
                  width: Constants.screenWidth * 0.38,
                  height: Constants.screenHeight * 0.08,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: Constants.screenHeight * 0.02),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "           3826",
                        hintStyle: TextStyle(color: Constants.otpTextColor),
                        filled: true,
                        fillColor: Color(0xffD9D9D9),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Constants.screenHeight * 0.001),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)), primary: Constants.btnColor),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
                    child: Text("Valider"),
                  )),
            )
          ],
        ),
      ),
    ));
  }
}
