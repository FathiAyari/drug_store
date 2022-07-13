import 'package:drug_store/constants/constants.dart';
import 'package:drug_store/screens/components/drawer.dart';
import 'package:drug_store/screens/home_screens/items/basket/basket.dart';
import 'package:drug_store/screens/home_screens/items/home/commands.dart';
import 'package:drug_store/screens/home_screens/items/profile/account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      drawer: DrawerScreen(),
      backgroundColor: Constants.bgColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
        title: Text(
          "Votre compte",
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
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 70,
              backgroundImage: AssetImage("assets/images/pic.jpg"),
            ),
            Text("Nour El Houda",
                style: TextStyle(
                    fontFamily: "NunitoBold",
                    letterSpacing: 1.5,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "+216 58 703 826",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: "NunitoBold",
                  color: Constants.otpTextColor,
                ),
              ),
            ),
            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/images/doctor.png",
                              color: Constants.otpTextColor,
                            ),
                          ),
                        ),
                        Text(
                          "Pharmacies sauvés",
                          style: TextStyle(fontFamily: "NunitoBold", color: Constants.otpTextColor),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/images/contract.png",
                              color: Constants.otpTextColor,
                              height: Constants.screenHeight * 0.05,
                            ),
                          ),
                        ),
                        Text(
                          "Articles enregistrés",
                          style: TextStyle(fontFamily: "NunitoBold", color: Constants.otpTextColor),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/heart.png",
                                color: Constants.otpTextColor, height: Constants.screenHeight * 0.05),
                          ),
                        ),
                        Text(
                          "Journal de santé",
                          style: TextStyle(fontFamily: "NunitoBold", color: Constants.otpTextColor),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    left: Constants.screenWidth * 0.1,
                    right: Constants.screenWidth * 0.1,
                    top: Constants.screenHeight * 0.03,
                    bottom: 8),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListTile(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Account()),
                            );
                          },
                          leading: Icon(Icons.calendar_today, color: Constants.btnColor),
                          title: Text("Mon compte",
                              style: TextStyle(fontFamily: "NunitoBold", fontSize: 15, color: Constants.otpTextColor)),
                          trailing: Icon(Icons.arrow_forward_ios, color: Constants.btnColor),
                        ),
                      ),
                      Divider(
                        thickness: 1.9,
                        color: Constants.bgColor,
                        height: 20,
                      ),
                      Expanded(
                        child: ListTile(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => BasketScreen()),
                            );
                          },
                          leading: Image.asset("assets/images/pill.png",
                              color: Constants.btnColor, height: Constants.screenHeight * 0.04),
                          title: Text("Médicament",
                              style: TextStyle(fontFamily: "NunitoBold", fontSize: 15, color: Constants.otpTextColor)),
                          trailing: Icon(Icons.arrow_forward_ios, color: Constants.btnColor),
                        ),
                      ),
                      Divider(
                        thickness: 1.9,
                        color: Constants.bgColor,
                        height: 20,
                      ),
                      Expanded(
                        child: ListTile(
                          leading: Image.asset("assets/images/doctor.png",
                              color: Constants.btnColor, height: Constants.screenHeight * 0.04),
                          title: Text("Mes pharmacies",
                              style: TextStyle(fontFamily: "NunitoBold", fontSize: 15, color: Constants.otpTextColor)),
                          trailing: Icon(Icons.arrow_forward_ios, color: Constants.btnColor),
                        ),
                      ),
                      Divider(
                        thickness: 1.9,
                        color: Constants.bgColor,
                        height: 20,
                      ),
                      Expanded(
                        child: ListTile(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Orders()),
                            );
                          },
                          leading: Icon(Icons.attach_money_rounded, color: Constants.btnColor),
                          title: Text("Commande",
                              style: TextStyle(fontFamily: "NunitoBold", fontSize: 15, color: Constants.otpTextColor)),
                          trailing: Icon(Icons.arrow_forward_ios, color: Constants.btnColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
