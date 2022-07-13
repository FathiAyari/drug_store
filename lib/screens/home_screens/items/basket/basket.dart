import 'package:drug_store/data/medicins.dart';
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
  List<Medicins> medicins = [
    Medicins(name: "The ordinary", image: "assets/images/ordinary.jpg", price: 9, priceReduction: 19),
    Medicins(name: "Tylenol 100mg", image: "assets/images/tylenol.jpg", price: 16),
    Medicins(name: "Blackmores", image: "assets/images/blackmores.jpg", price: 19),
    Medicins(name: "multibiane", image: "assets/images/multibiane.jpg", price: 12),
  ];
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
      body: Container(
        width: double.infinity,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ListView.builder(
                itemCount: medicins.length,
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
                            child: Image.asset(medicins[index].image),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  medicins[index].name,
                                  style: TextStyle(color: Constants.otpTextColor, fontFamily: "NunitoBold"),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "${medicins[index].price}",
                                            style: TextStyle(color: Colors.red),
                                          ),
                                          const Text(
                                            "TND",
                                            style: TextStyle(color: Colors.red),
                                          ),
                                        ],
                                      ),
                                      if (medicins[index].priceReduction != null) ...[
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: Constants.screenWidth * 0.1),
                                          child: Column(
                                            children: [
                                              Text(
                                                "${medicins[index].priceReduction}",
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
                                              medicins.removeAt(index);
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
                        child: Text("valider", style: TextStyle(fontFamily: "NunitoBold")),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
