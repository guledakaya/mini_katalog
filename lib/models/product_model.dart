import 'package:flutter/foundation.dart';

@immutable
class Product {
  const Product({
    required this.name,
    required this.price,
    required this.image,
    required this.description,
  });

  final String name;
  final double price;
  final String image;
  final String description;

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      image: json['image'] as String,
      description: json['description'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'price': price,
      'image': image,
      'description': description,
    };
  }
}

/// Eğitim amacıyla kullanılan JSON simülasyonu.
/// API'den geliyormuş gibi, `fromJson` ile modele dönüştürülür.
const List<Map<String, dynamic>> _dummyProductsJson = <Map<String, dynamic>>[
  <String, dynamic>{
    'name': 'Premium Gift Box',
    'price': 249.90,
    'image': 'https://picsum.photos/seed/gift-box/800/600',
    'description':
        'Özel günler için tasarlanmış, el yapımı detaylara sahip premium hediye kutusu.',
  },
  <String, dynamic>{
    'name': 'Minimal Mug',
    'price': 129.50,
    'image': 'https://picsum.photos/seed/mug/800/600',
    'description':
        'Modern tasarımlı, mat dokulu ve günlük kullanıma uygun minimal kupa.',
  },
  <String, dynamic>{
    'name': 'Desk Plant',
    'price': 179.00,
    'image': 'https://picsum.photos/seed/plant/800/600',
    'description':
        'Çalışma masanıza canlılık katacak, bakımı kolay minyatür saksı bitkisi.',
  },
  <String, dynamic>{
    'name': 'Scented Candle',
    'price': 99.90,
    'image': 'https://picsum.photos/seed/candle/800/600',
    'description':
        'Rahatlatıcı kokulara sahip, uzun süre yanma ömrü sunan kokulu mum.',
  },
];

final List<Product> dummyProducts = List<Product>.unmodifiable(
  _dummyProductsJson.map(Product.fromJson),
);

