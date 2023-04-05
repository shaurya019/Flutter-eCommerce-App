import 'package:equatable/equatable.dart';
import 'package:flutter_ecommerce/models/models.dart';

abstract class WishlistEvent extends Equatable {
  const WishlistEvent();
}

class WishlistStarted extends WishlistEvent {
  @override
  List<Object> get props => [];
}

class WishlistProductAdded extends WishlistEvent {
  final UserProduct product;

  const WishlistProductAdded(this.product);

  @override
  List<Object> get props => [product];
}

class WishlistProductRemoved extends WishlistEvent {
  final UserProduct product;

  const WishlistProductRemoved(this.product);

  @override
  List<Object> get props => [product];
}