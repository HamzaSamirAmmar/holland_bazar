import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int id;
  final String title;
  final String description;
  final double price;
  final double rate;
  final String image;

  const Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.rate,
    required this.image,
  });

  @override
  List<Object?> get props => [id, title, description, price, rate, image];
}
