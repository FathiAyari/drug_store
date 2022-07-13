import 'package:drug_store/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<Color> colors = [Color(0xffEF5F83), Color(0xff00A651), Color(0xffF8CAD7)];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Constants.bgColor,
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: Constants.screenHeight * 0.025, right: Constants.screenWidth * 0.06, left: Constants.screenWidth * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Constants.otpTextColor,
                    ),
                  ),
                  Text(
                    "Pharmacie Boudeya",
                    style: TextStyle(fontFamily: "NunitoBold", color: Constants.otpTextColor),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/pharmacien1.jpg"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "AUJOURD'HUI À 10H45",
                style: TextStyle(fontFamily: "NunitoBold", color: Colors.black),
              ),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))),
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          employeeMessageBubble("Bonjour Nour El Houde, comment pouvons-nous vous aider aujourd'hui ?"),
                          userMessageBubble("Bonjour, j'ai besoin que ces médicaments soient livrés à mon adresse"),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: Constants.screenWidth * 0.35),
                                  decoration: BoxDecoration(color: Constants.btnColor, borderRadius: BorderRadius.circular(13)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: Constants.screenHeight * 0.01, horizontal: Constants.screenWidth * 0.01),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Image.asset(
                                        "assets/images/fig.jpg",
                                        height: Constants.screenHeight * 0.25,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: Constants.screenWidth * 0.2,
                                    decoration: BoxDecoration(boxShadow: const [
                                      BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(0, 3)),
                                    ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: Constants.screenHeight * 0.01, horizontal: Constants.screenWidth * 0.01),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                            children: List.generate(
                                          3,
                                          (int index) {
                                            return Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Container(
                                                height: 10,
                                                width: 10,
                                                decoration:
                                                    BoxDecoration(borderRadius: BorderRadius.circular(100), color: colors[index]),
                                              ),
                                            );
                                          },
                                        )),
                                      ),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: Constants.screenWidth * 0.03,
                        right: Constants.screenWidth * 0.03,
                        bottom: Constants.screenHeight * 0.02),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Envoyer un message",
                        hintStyle: TextStyle(color: Constants.otpTextColor, fontStyle: FontStyle.italic),
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt,
                            color: Color(0xff807C7C),
                          ),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.send,
                            color: Constants.btnColor,
                          ),
                        ),
                        filled: true,
                        fillColor: Constants.txtFormFieldColor,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    ));
  }

  Column employeeMessageBubble(String message) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(right: Constants.screenWidth * 0.35),
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(0, 3)),
          ], color: Colors.white, borderRadius: BorderRadius.circular(13)),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: Constants.screenHeight * 0.01, horizontal: Constants.screenWidth * 0.01),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "$message",
                    style: TextStyle(color: Constants.otpTextColor),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Il ya 5 minutes",
                      style: TextStyle(color: Constants.btnColor),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  userMessageBubble(String message) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: Constants.screenWidth * 0.35),
            decoration: BoxDecoration(color: Constants.btnColor, borderRadius: BorderRadius.circular(13)),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: Constants.screenHeight * 0.01, horizontal: Constants.screenWidth * 0.01),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "$message",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
