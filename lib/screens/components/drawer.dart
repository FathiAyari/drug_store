import 'package:drug_store/screens/home_screens/items/home/commands.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../home_screens/items/profile/account.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(
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
            Divider(
              thickness: 3,
              color: Constants.bgColor,
              height: 25,
            ),
            Expanded(
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
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
                  Divider(
                    thickness: 1.9,
                    color: Constants.bgColor,
                    height: 20,
                  ),
                  ListTile(
                    leading:
                        Image.asset("assets/images/pill.png", color: Constants.btnColor, height: Constants.screenHeight * 0.04),
                    title: Text("Médicament",
                        style: TextStyle(fontFamily: "NunitoBold", fontSize: 15, color: Constants.otpTextColor)),
                    trailing: Icon(Icons.arrow_forward_ios, color: Constants.btnColor),
                  ),
                  Divider(
                    thickness: 1.9,
                    color: Constants.bgColor,
                    height: 20,
                  ),
                  ListTile(
                    leading:
                        Image.asset("assets/images/doctor.png", color: Constants.btnColor, height: Constants.screenHeight * 0.04),
                    title: Text("Mes pharmacies",
                        style: TextStyle(fontFamily: "NunitoBold", fontSize: 15, color: Constants.otpTextColor)),
                    trailing: Icon(Icons.arrow_forward_ios, color: Constants.btnColor),
                  ),
                  Divider(
                    thickness: 1.9,
                    color: Constants.bgColor,
                    height: 20,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Orders()),
                      );
                    },
                    leading: Icon(Icons.attach_money_rounded, color: Constants.btnColor),
                    title:
                        Text("Commande", style: TextStyle(fontFamily: "NunitoBold", fontSize: 15, color: Constants.otpTextColor)),
                    trailing: Icon(Icons.arrow_forward_ios, color: Constants.btnColor),
                  ),
                  Spacer(),
                  ListTile(
                    leading: Icon(Icons.share, color: Constants.btnColor),
                    title: Text("Dis à ton ami",
                        style: TextStyle(fontFamily: "NunitoBold", fontSize: 15, color: Constants.otpTextColor)),
                  ),
                  ListTile(
                    leading: Icon(Icons.comment, color: Constants.btnColor),
                    title: Text("Commentaires et contactez-nous",
                        style: TextStyle(fontFamily: "NunitoBold", fontSize: 13, color: Constants.otpTextColor)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
