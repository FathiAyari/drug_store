import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/constants.dart';
import '../../../components/drawer.dart';
import 'chat.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MessagesScreen> {
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
          "Boite de réception",
          style: TextStyle(fontFamily: "NunitoBold", color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            messageTile(
              drugStore: "Pharmacie Boudeya",
              status: "En train d'écrire...",
              image: "assets/images/pharmacien1.jpg",
              time: "10h00",
            ),
            messageTile(
              drugStore: "Pharmacie meksi",
              status: "Bonjour, j’ai besoin de..",
              image: "assets/images/pharmacien2.jpg",
              time: "08h00",
            ),
            messageTile(
              drugStore: "Pharmacie ferchichi",
              status: "J'ai bien recu ma commande",
              image: "assets/images/pharmacien3.jpg",
              time: "11h00",
            ),
          ],
        ),
      ),
    ));
  }
}

class messageTile extends StatelessWidget {
  final String drugStore;
  final String image;
  final String status;
  final String time;
  const messageTile({
    Key? key,
    required this.drugStore,
    required this.image,
    required this.status,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: Constants.screenHeight * 0.1,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Get.to(Chat());
            },
            child: Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(backgroundImage: AssetImage("$image"), radius: 30),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 11,
                      child: CircleAvatar(
                        radius: 7,
                        backgroundColor: Colors.green,
                      ),
                    )
                  ],
                  alignment: Alignment.bottomRight,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$drugStore",
                        style: TextStyle(fontFamily: "NunitoBold", color: Colors.black),
                      ),
                      Text(
                        "$status",
                        style: TextStyle(fontFamily: "NunitoBold", color: Constants.otpTextColor),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Text(
                  "$time",
                  style: TextStyle(fontFamily: "NunitoBold", color: Constants.otpTextColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
