

import 'package:equatable/equatable.dart';
import 'package:flutter_ecommerce/models/models.dart';

abstract class WishlistEvent extends Equatable {
  const WishlistEvent();
}

class StartWishlist extends WishlistEvent {
  @override
  List<Object> get props => [];
}

class AddProductToWishlist extends WishlistEvent {
  final UserProduct product;

  const AddProductToWishlist(this.product);

  @override
  List<Object> get props => [product];
}

class RemoveProductFromWishlist extends WishlistEvent {
  final UserProduct product;

  const RemoveProductFromWishlist(this.product);

  @override
  List<Object> get props => [product];
}
