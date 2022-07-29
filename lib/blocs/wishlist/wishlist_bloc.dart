import 'package:bloc/bloc.dart';
import 'package:ecommerce_firebase/models/wishlist_model.dart';
import 'package:equatable/equatable.dart';

import '../../models/models.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistLoading()) {
    on<WishlistEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
