import 'dart:ui';

import '../data/medicins.dart';

class Constants {
  static Color bgColor = Color(0xFFF2F2F6);
  static Color otpTextColor = Color(0xFF807C7C);
  static Color btnColor = Color(0xFF058F98);
  static Color cancelButtonColor = Color(0xFF4D4C4C);
  static Color txtFormFieldColor = Color(0xFFEFF5F2);
  static var screenWidth = (window.physicalSize.shortestSide / window.devicePixelRatio);
  static var screenHeight = (window.physicalSize.longestSide / window.devicePixelRatio);
  static List<Medicins> medicins = [
    Medicins(name: "FILORGA TROUSSE LES BEST SELLERS", image: "assets/images/15.png", price: 20, priceReduction: 18),
    Medicins(name: "The ordinary", image: "assets/images/ordinary.jpg", price: 9, priceReduction: 19),
    Medicins(name: "Tylenol 100mg", image: "assets/images/tylenol.jpg", price: 16),
    Medicins(name: "Blackmores", image: "assets/images/blackmores.jpg", price: 19),
    Medicins(name: "multibiane", image: "assets/images/multibiane.jpg", price: 12),
  ];
  static List<Medicins> medicins2 = [
    Medicins(name: "FILORGA TROUSSE LES BEST SELLERS", image: "assets/images/15.png", price: 20, priceReduction: 18),
  ];
}
