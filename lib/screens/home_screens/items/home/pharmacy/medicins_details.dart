import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/constants.dart';

class MedicinsDetails extends StatefulWidget {
  final String category;
  const MedicinsDetails({Key? key, required this.category}) : super(key: key);

  @override
  _MedicinsDetailsState createState() => _MedicinsDetailsState();
}

class _MedicinsDetailsState extends State<MedicinsDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
        centerTitle: true,
        title: Text(
          "${widget.category}",
          style: TextStyle(fontFamily: "NunitoBold", color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: Constants.medicins.length,
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
                      child: Image.asset(Constants.medicins[index].image),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Constants.medicins[index].name,
                            style: TextStyle(color: Constants.otpTextColor, fontFamily: "NunitoBold"),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "${Constants.medicins[index].price}",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    const Text(
                                      "TND",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                                if (Constants.medicins[index].priceReduction != null) ...[
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: Constants.screenWidth * 0.1),
                                    child: Column(
                                      children: [
                                        Text(
                                          "${Constants.medicins[index].priceReduction}",
                                          style: TextStyle(color: Constants.otpTextColor, decoration: TextDecoration.lineThrough),
                                        ),
                                        Text(
                                          "TND",
                                          style: TextStyle(color: Constants.otpTextColor, decoration: TextDecoration.lineThrough),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(color: Constants.bgColor, borderRadius: BorderRadius.circular(15)),
                                  child: IconButton(
                                    color: Constants.btnColor,
                                    onPressed: () {},
                                    icon: Icon(Icons.shopping_cart_sharp),
                                  ),
                                )
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
    ));
  }
}
