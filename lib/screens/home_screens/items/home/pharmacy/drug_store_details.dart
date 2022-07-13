import 'package:drug_store/data/pharmacy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/constants.dart';
import 'medicins_details.dart';

class DrugStoreDetails extends StatefulWidget {
  final Pharmacy pharmacy;
  const DrugStoreDetails({Key? key, required this.pharmacy}) : super(key: key);

  @override
  _DrugStoreDetailsState createState() => _DrugStoreDetailsState();
}

class _DrugStoreDetailsState extends State<DrugStoreDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Constants.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Votre pharmacie",
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
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  title: Container(
                    height: Constants.screenHeight * 0.15,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            widget.pharmacy.image,
                            height: Constants.screenHeight * 0.1,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.pharmacy.name,
                                  style: TextStyle(color: Constants.otpTextColor),
                                ),
                                Text(
                                  widget.pharmacy.address,
                                  style: TextStyle(color: Constants.otpTextColor),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.location_on),
                                          Text(
                                            "${widget.pharmacy.distance} km",
                                            style: TextStyle(color: Constants.otpTextColor),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        decoration:
                                            BoxDecoration(color: Color(0xffF8F8FB), borderRadius: BorderRadius.circular(20)),
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            "Ouverte",
                                            style: TextStyle(color: Color(0xff27AE60)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          ),
          Container(
            height: Constants.screenHeight * 0.07,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildOptions("Directions", Icons.directions),
                buildOptions("Discuter", Icons.message),
                buildOptions("Appel", Icons.call),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView(
                  gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 16, mainAxisSpacing: 16),
                  children: [
                    category("Covid-19", "assets/images/covid.png"),
                    category("Para-pharmacie", "assets/images/para.jpg"),
                    category("Analgésiques", "assets/images/Analgésiques.png"),
                    category("Estomac", "assets/images/estomac.jpg"),
                    category("Épilepsie", "assets/images/epilepsie.png"),
                    category("Pancréatite", "assets/images/pancréatite.png"),
                    category("Pilule neuro", "assets/images/pillule.jpg"),
                    category("Immunité", "assets/images/systeme-immunitaire.jpg"),
                    category("Autre", "assets/images/more.png"),
                  ]),
            ),
          )
        ],
      ),
    ));
  }

  buildOptions(String label, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        width: Constants.screenWidth * 0.3,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15), border: Border.all(color: Constants.btnColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData, color: Constants.btnColor),
            Text(label),
          ],
        ),
      ),
    );
  }

  category(String label, String image) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MedicinsDetails(
                    category: label,
                  )),
        );
      },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Column(
          children: [
            Image.asset(
              image,
              height: Constants.screenHeight * 0.11,
            ),
            Text(label)
          ],
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
      ),
    );
  }
}
