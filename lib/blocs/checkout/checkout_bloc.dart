import 'package:bloc/bloc.dart';
import 'package:ecommerce_firebase/models/cart_model.dart';
import 'package:equatable/equatable.dart';

import '../../models/product_model.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc() : super(CheckoutInitial()) {
    on<CheckoutEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
