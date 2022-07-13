import 'package:drug_store/constants/constants.dart';
import 'package:drug_store/data/pharmacy.dart';
import 'package:drug_store/screens/components/drawer.dart';
import 'package:drug_store/screens/home_screens/items/home/pharmacy/drug_stores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'pharmacy/drug_store_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late double longitude;
  late double altitude;

  getCurrentPosition() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.deniedForever) {}
    } else {
      var position = await Geolocator.getCurrentPosition();

      setState(() {
        longitude = position.longitude;
        altitude = position.altitude;
      });
    }
  }

  Set<Marker> getMarkers() {
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
    Set<Marker> markers = {};
    for (Pharmacy pharmacy in pharmacies) {
      markers.add(Marker(
          onTap: () async {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: Colors.transparent,
                builder: (BuildContext context) {
                  return Container(
                      margin: EdgeInsets.only(bottom: Constants.screenHeight * 0.009),
                      height: Constants.screenHeight * 0.3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Column(
                            children: [
                              Text("Hammem Lif",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xffa0c4f6))),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(pharmacy.image, height: Constants.screenHeight * 0.09)),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "${pharmacy.name}",
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xffa0c4f6)),
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton(
                                        onPressed: () async {
                                          final Uri launchUri = Uri(
                                            scheme: 'tel',
                                            path: pharmacy.phone,
                                          );
                                          await launchUrl(launchUri);
                                        },
                                        icon: Icon(
                                          Icons.phone,
                                          color: Color(0xffa0c4f6),
                                        )),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text("Adresse:",
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xffa0c4f6))),
                                    Text(pharmacy.address,
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xffa0c4f6))),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: Constants.screenHeight * 0.001, horizontal: Constants.screenWidth * 0.1),
                                child: Container(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                          primary: Constants.btnColor),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => DrugStoreDetails(
                                                    pharmacy: pharmacy,
                                                  )),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
                                        child: Text("Explorer"),
                                      )),
                                ),
                              )
                            ],
                          ),
                          IconButton(
                              splashColor: Colors.transparent,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.close,
                                color: Colors.redAccent,
                              )),
                        ],
                      ));
                },
                context: context);
          },
          markerId: MarkerId(pharmacy.name),
          position: LatLng(pharmacy.latitude, pharmacy.longitude)));
    }
    return markers;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentPosition();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: DrawerScreen(),
      key: _scaffoldKey,
      backgroundColor: Constants.bgColor,
      body: Stack(
        children: [
          GoogleMap(
            trafficEnabled: true,
            markers: getMarkers(),
            myLocationEnabled: true,
            scrollGesturesEnabled: true,
            onLongPress: (test) async {},
            initialCameraPosition: CameraPosition(
              zoom: 6.7,
              target: LatLng(36.820719, 9.776173),
            ),
          ),
          Row(
            children: [
              IconButton(onPressed: () => _scaffoldKey.currentState!.openDrawer(), icon: Icon(Icons.menu)),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: Constants.screenHeight * 0.01, right: Constants.screenWidth * 0.15),
                  child: TextFormField(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DrugStores()),
                      );
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Rechercher une pharmacie à proximité",
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
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
