
import 'package:equatable/equatable.dart';
import 'package:flutter_ecommerce/models/models.dart';

class Wishlist extends Equatable{
  final List<UserProduct> products;

  Wishlist({this.products = const <UserProduct>[]});

  @override
  List<Object?> get props => [products];
}