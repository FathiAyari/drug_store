import 'package:drug_store/screens/home_screens/items/basket/payment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';
import '../../../components/drawer.dart';

class BasketScreen extends StatefulWidget {
  const BasketScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<BasketScreen> {
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
          "Votre panier",
          style: TextStyle(fontFamily: "NunitoBold", color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {});
        },
        child: Container(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ListView.builder(
                  itemCount: Constants.medicins2.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: Constants.screenHeight * 0.1,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(Constants.medicins2[index].image),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    Constants.medicins2[index].name,
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis, color: Constants.otpTextColor, fontFamily: "NunitoBold"),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "${Constants.medicins2[index].price}",
                                              style: TextStyle(color: Colors.red),
                                            ),
                                            const Text(
                                              "TND",
                                              style: TextStyle(color: Colors.red),
                                            ),
                                          ],
                                        ),
                                        if (Constants.medicins2[index].priceReduction != null) ...[
                                          Padding(
                                            padding: EdgeInsets.symmetric(horizontal: Constants.screenWidth * 0.1),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "${Constants.medicins2[index].priceReduction}",
                                                  style: TextStyle(
                                                      color: Constants.otpTextColor, decoration: TextDecoration.lineThrough),
                                                ),
                                                Text(
                                                  "TND",
                                                  style: TextStyle(
                                                      color: Constants.otpTextColor, decoration: TextDecoration.lineThrough),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                        Spacer(),
                                        ElevatedButton.icon(
                                            style: ElevatedButton.styleFrom(primary: Colors.red),
                                            onPressed: () {
                                              setState(() {
                                                Constants.medicins2.removeAt(index);
                                              });
                                            },
                                            icon: Icon(Icons.delete),
                                            label: Text("Supprimer"))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Constants.cancelButtonColor),
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: Constants.screenHeight * 0.02, horizontal: Constants.screenWidth * 0.05),
                          child: Text(
                            "Annuler",
                            style: TextStyle(fontFamily: "NunitoBold"),
                          ),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Constants.btnColor),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Payment()),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: Constants.screenHeight * 0.02, horizontal: Constants.screenWidth * 0.05),
                          child: Text("Valider", style: TextStyle(fontFamily: "NunitoBold")),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
