import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Constants.bgColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          "Mon compte",
          style: TextStyle(fontFamily: "NunitoBold", color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 70,
                  backgroundImage: AssetImage("assets/images/pic.jpg"),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 0, end: 10),
                  child: CircleAvatar(radius: 17, backgroundColor: Constants.btnColor, child: Icon(Icons.camera_alt)),
                )
              ],
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
                    "Adresse",
                    style: TextStyle(decoration: TextDecoration.underline, fontSize: 18),
                  ),
                  Container(
                    height: Constants.screenHeight * 0.08,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: Constants.screenHeight * 0.02),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "18 rue nabeul hammam lif",
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
              padding: EdgeInsets.symmetric(vertical: Constants.screenHeight * 0.001),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Date de naissance",
                        style: TextStyle(decoration: TextDecoration.underline, fontSize: 18),
                      ),
                      Container(
                        width: Constants.screenWidth * 0.38,
                        height: Constants.screenHeight * 0.08,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: Constants.screenHeight * 0.02),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "05/11/1997",
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
                    padding: EdgeInsets.only(left: Constants.screenWidth * 0.1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Téléphone",
                          style: TextStyle(decoration: TextDecoration.underline, fontSize: 18),
                        ),
                        Container(
                          width: Constants.screenWidth * 0.35,
                          height: Constants.screenHeight * 0.08,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: Constants.screenHeight * 0.02),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "+21658703826",
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
                ],
              ),
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
