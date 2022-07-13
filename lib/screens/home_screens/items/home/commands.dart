import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Constants.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Commande",
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
                        "assets/images/truck.png",
                        height: Constants.screenHeight * 0.07,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "commande 003",
                            style: TextStyle(fontFamily: "NunitoBold"),
                          ),
                          Text("En cours ...", style: TextStyle(color: Colors.orange)),
                        ],
                      ),
                      Spacer(),
                      Text(
                        "10h30",
                        style: TextStyle(color: Constants.otpTextColor),
                      )
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
                        "assets/images/truck.png",
                        height: Constants.screenHeight * 0.07,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "commande 002",
                            style: TextStyle(fontFamily: "NunitoBold"),
                          ),
                          Text("livré", style: TextStyle(color: Colors.green)),
                        ],
                      ),
                      Spacer(),
                      Text(
                        "Hier",
                        style: TextStyle(color: Constants.otpTextColor),
                      )
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
                        "assets/images/truck.png",
                        height: Constants.screenHeight * 0.07,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "commande 001",
                            style: TextStyle(fontFamily: "NunitoBold"),
                          ),
                          Text("Annuler", style: TextStyle(color: Colors.red)),
                        ],
                      ),
                      Spacer(),
                      Text(
                        "Hier",
                        style: TextStyle(color: Constants.otpTextColor),
                      )
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
