import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../otp_screens/otp_screen.dart';
import 'on_boarding_content.dart';
import 'on_boarding_controller.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

PageController _controller = PageController();
int currentPage = 0;
List<Content> contentList = [
  Content(
    img: 'assets/images/welcome.json',
    description: 'votre pharmacie de proximité est ici avec une seule clic',
    title: 'Bienvenue chez PharmaLigne',
  ),
  Content(
    img: 'assets/images/marker.json',
    description: 'Decouvrrir les pharmacies les plus proches de vous',
  ),
  Content(
    img: 'assets/images/done.json',
    description: 'Passer vos commandes en toute sécurité',
  )
];
OnBoardingController onBoardingController = OnBoardingController();

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemCount: contentList.length,
                scrollDirection: Axis.horizontal, // the axis
                controller: _controller,
                itemBuilder: (context, int index) {
                  return contentList[index];
                }),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(contentList.length, (int index) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      height: size.height * 0.01,
                      width: (index == currentPage) ? 25 : 10, // condition au lieu de if else
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (index == currentPage) ? Colors.blue : Colors.blue.withOpacity(0.5)),
                    );
                  }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                          child: InkWell(
                            onTap: () {
                              Get.to(OTPScreen());
                            },
                            child: Text(
                              "Ignorer",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 45,
                          child: ElevatedButton(
                              onPressed: (currentPage == contentList.length - 1)
                                  ? () {
                                      onBoardingController.check();
                                      Get.to(OTPScreen());
                                    }
                                  : () {
                                      onBoardingController.check();
                                      _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOutQuint);
                                    },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                primary: Color(0xffa0c4f6),
                              ),
                              child: (currentPage == contentList.length - 1) ? Text("Commencer") : Text("Suivant")),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
