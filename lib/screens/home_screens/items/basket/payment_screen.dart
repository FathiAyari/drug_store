import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';
import 'edit_credit_card.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String payment = "ocb";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.all(20),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Constants.btnColor),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditCreditCard()),
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: Constants.screenHeight * 0.02, horizontal: Constants.screenWidth * 0.05),
              child: Text("valider", style: TextStyle(fontFamily: "NunitoBold")),
            )),
      ),
      backgroundColor: Constants.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Paiement",
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Row(
                    children: [
                      Image.asset(
                        "assets/images/logo-cb.jpg",
                        height: Constants.screenHeight * 0.07,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Carte bancaire natinal", style: TextStyle(fontFamily: "NunitoBold", color: Colors.black)),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => EditCreditCard()),
                                  );
                                },
                                child: Container(
                                    alignment: Alignment.topCenter,
                                    child: Text("Modifier",
                                        style: TextStyle(decoration: TextDecoration.underline, color: Colors.black))),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Radio(
                          value: "ocb",
                          groupValue: payment,
                          onChanged: (index) {
                            {
                              setState(() {
                                payment = "ocb";
                              });
                            }
                            ;
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Row(
                    children: [
                      Image.asset(
                        "assets/images/cash.png",
                        height: Constants.screenHeight * 0.07,
                      ),
                      Text("En  espéce", style: TextStyle(fontFamily: "NunitoBold", color: Colors.black)),
                      Spacer(),
                      Radio(
                          value: "cash",
                          groupValue: payment,
                          onChanged: (index) {
                            {
                              setState(() {
                                payment = "cash";
                              });
                            }
                            ;
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
