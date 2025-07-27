class CommercialProperty {
  final String id;
  final String propertyName;
  final String address;
  final double price;
  final int squareFootage;
  final String propertyType;
  final List<String> amenities;
  final String mainImageUrl;

  CommercialProperty({
    required this.id,
    required this.propertyName,
    required this.address,
    required this.price,
    required this.squareFootage,
    required this.propertyType,
    required this.amenities,
    required this.mainImageUrl,
  });
}