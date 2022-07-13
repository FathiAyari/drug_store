import 'package:drug_store/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Constants.bgColor,
      body: Stack(
        children: [
          GoogleMap(
            trafficEnabled: true,
            myLocationEnabled: true,
            scrollGesturesEnabled: true,
            onLongPress: (test) async {},
            initialCameraPosition: CameraPosition(
              zoom: 6.7,
              target: LatLng(36.820719, 9.776173),
            ),
          ),
        ],
      ),
    ));
  }
}
