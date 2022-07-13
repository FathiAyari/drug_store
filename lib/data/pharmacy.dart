class Pharmacy {
  final String name;
  final String address;
  final double longitude;
  final double latitude;
  final String image;
  final String phone;
  final double? distance;

  Pharmacy({
    required this.name,
    required this.address,
    required this.longitude,
    required this.latitude,
    required this.image,
    required this.phone,
    this.distance,
  });
}
