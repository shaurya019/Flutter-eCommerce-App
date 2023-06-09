import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/blocs%20/wishlist/wishlist_event.dart';
import 'package:flutter_ecommerce/blocs%20/wishlist/wishlist_state.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../models/wishlist_model.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistLoading());

  @override
  Stream<WishlistState> mapEventToState(
      WishlistEvent event,
      ) async* {
    if (event is WishlistState) {
      yield* _mapWishlistStartedToState();
    } else if (event is WishlistProductAdded) {
      yield* _mapWishlistProductAddedToState(event, state);
    } else if (event is WishlistProductRemoved) {
      yield* _mapWishlistProductRemovedToState(event, state);
    }
  }

  Stream<WishlistState> _mapWishlistStartedToState() async* {
    yield WishlistLoading();
    try {
      await Future<void>.delayed(const Duration(seconds: 1));
      yield const WishlistLoaded();
    } catch (_) {
      yield WishlistError();
    }
  }

  Stream<WishlistState> _mapWishlistProductAddedToState(
      WishlistProductAdded event,
      WishlistState state,
      ) async* {
    if (state is WishlistLoaded) {
      try {
        yield WishlistLoaded(
          wishlist: Wishlist(
            products: List.from(state.wishlist.products)..add(event.product),
          ),
        );
      } on Exception {
        yield WishlistError();
      }
    }
  }

  Stream<WishlistState> _mapWishlistProductRemovedToState(
      WishlistProductRemoved event,
      WishlistState state,
      ) async* {
    if (state is WishlistLoaded) {
      try {
        yield WishlistLoaded(
          wishlist: Wishlist(
            products: List.from(state.wishlist.products)..remove(event.product),
          ),
        );
      } on Exception {
        yield WishlistError();
      }
    }
  }
}