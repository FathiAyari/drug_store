import 'package:drug_store/constants/constants.dart';
import 'package:drug_store/screens/home_screens/items/basket/basket.dart';
import 'package:drug_store/screens/home_screens/items/home/home_screen.dart';
import 'package:drug_store/screens/home_screens/items/messages/messages_screen.dart';
import 'package:drug_store/screens/home_screens/items/profile/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List<Widget> pages = [HomeScreen(), BasketScreen(), MessagesScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Constants.btnColor,
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Accueil",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_sharp),
            label: "Panier",
          ),
          BottomNavigationBarItem(
            icon: const ImageIcon(
              AssetImage(
                "assets/images/message.png",
              ),
            ),
            label: "Discuter",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Compte",
          ),
        ],
      ),
    ));
  }
}
