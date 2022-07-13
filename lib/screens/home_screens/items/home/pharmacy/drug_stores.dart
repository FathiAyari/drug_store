import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/constants.dart';
import '../../../../../data/pharmacy.dart';
import '../../../../components/drawer.dart';
import 'drug_store_details.dart';

class DrugStores extends StatefulWidget {
  const DrugStores({Key? key}) : super(key: key);

  @override
  _DrugStoresState createState() => _DrugStoresState();
}

class _DrugStoresState extends State<DrugStores> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List<Pharmacy> pharmacies = [
    Pharmacy(
        distance: 0.3,
        name: "Pharmacie Boudaya",
        address: "Av. Taieb Mhiri",
        longitude: 10.33763478762729,
        latitude: 36.73090615993114,
        image: "assets/images/pharmacien1.jpg",
        phone: "71290371"),
    Pharmacy(
        distance: 0.9,
        name: "Pharmacie Ferchichi",
        address: "Rue Salammbo",
        longitude: 10.337924499173033,
        latitude: 36.72881064324162,
        image: "assets/images/pharmacien2.jpg",
        phone: "71290493"),
    Pharmacy(
        distance: 1.2,
        name: "Pharmacie MEKSI KAMEL",
        address: "avenue Taieb Mhiri",
        longitude: 10.343578595708708,
        latitude: 36.72870745644533,
        image: "assets/images/pharmacien3.jpg",
        phone: "71290389"),
    Pharmacy(
        distance: 3,
        name: "Pharmacie Kardous",
        address: "Avenue 20 Mars",
        longitude: 10.3333604335087,
        latitude: 36.73095657478266,
        image: "assets/images/pharmacien2.jpg",
        phone: "71291535"),
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
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
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
          "Choisir votre pharmacie",
          style: TextStyle(fontFamily: "NunitoBold", color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: Constants.screenHeight * 0.03, horizontal: Constants.screenWidth * 0.03),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Hammam Lif",
                hintStyle: TextStyle(
                  color: Constants.otpTextColor,
                ),
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: pharmacies.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DrugStoreDetails(
                                          pharmacy: pharmacies[index],
                                        )),
                              );
                            },
                            title: Container(
                              height: Constants.screenHeight * 0.15,
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      pharmacies[index].image,
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
                                            pharmacies[index].name,
                                            style: TextStyle(color: Constants.otpTextColor),
                                          ),
                                          Text(
                                            pharmacies[index].address,
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
                                                      "${pharmacies[index].distance} km",
                                                      style: TextStyle(color: Constants.otpTextColor),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffF8F8FB), borderRadius: BorderRadius.circular(20)),
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
                    );
                  }))
        ],
      ),
    ));
  }
}
