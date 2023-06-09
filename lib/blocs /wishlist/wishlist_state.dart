import 'package:equatable/equatable.dart';
import '../../models/wishlist_model.dart';


abstract class WishlistState extends Equatable {
  const WishlistState();
}

class WishlistLoading extends WishlistState {
  @override
  List<Object> get props => [];
}

class WishlistLoaded extends WishlistState {
  final Wishlist wishlist;

  const WishlistLoaded({this.wishlist =  Wishlist()});

  @override
  List<Object> get props => [wishlist];
}

class WishlistError extends WishlistState {
  @override
  List<Object> get props => [];
}