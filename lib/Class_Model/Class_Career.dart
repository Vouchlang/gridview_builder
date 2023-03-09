import 'package:flutter/material.dart';


class Career {
  late final String logo;
  late final String position;
  late final String organization;

  Career({required this.logo, required this.position, required this.organization});
}

List<Career> career = [
  Career(
      logo:'assets/image/1.jpg',
      position: 'ជ្រើសរើសបុគ្គលិកផ្នែក Cashier',
      organization: 'សាកលវិទ្យាល័យ សៅស៍អុីសថ៍អេយសៀ' ),
  Career(
      logo:'assets/image/1.jpg',
      position: 'ជ្រើសរើសបុគ្គលិកផ្នែក HR',
      organization: 'សាកលវិទ្យាល័យ សៅស៍អុីសថ៍អេយសៀ' ),
  Career(
      logo:'assets/image/1.jpg',
      position: 'ជ្រើសរើសបុគ្គលិកផ្នែកលក់សៀវភៅ',
      organization: 'សាកលវិទ្យាល័យ សៅស៍អុីសថ៍អេយសៀ' ),
  Career(
      logo:'assets/image/1.jpg',
      position: 'ជ្រើសរើសបុគ្គលិកផ្នែកថែសម្រស់',
      organization: 'សាកលវិទ្យាល័យ សៅស៍អុីសថ៍អេយសៀ' ),
  Career(
      logo:'assets/image/1.jpg',
      position: 'ជ្រើសរើសបុគ្គលិកផ្នែកបោកខោអាវ',
      organization: 'សាកលវិទ្យាល័យ សៅស៍អុីសថ៍អេយសៀ' ),
  Career(
      logo:'assets/image/1.jpg',
      position: 'ជ្រើសរើសបុគ្គលិកផ្នែកសម្អាតមនុស្ស',
      organization: 'សាកលវិទ្យាល័យ សៅស៍អុីសថ៍អេយសៀ' ),
];