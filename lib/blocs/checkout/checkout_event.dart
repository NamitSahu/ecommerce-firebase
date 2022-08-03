part of 'checkout_bloc.dart';

abstract class CheckoutEvent extends Equatable {
  const CheckoutEvent();

  @override
  List<Object> get props => [];
}

class UpdateCheckOut extends CheckoutEvent {
  final String? fullname;
  final String? email;
  final String? address;
  final String? city;
  final String? country;
  final String? zipcode;
  final Cart? cart;

  const UpdateCheckOut(
      {this.fullname,
      this.email,
      this.address,
      this.city,
      this.country,
      this.zipcode,
      this.cart});

  @override
  List<Object> get props => [];
}

// class ConfirmCheckout extends CheckoutEvent {
//   final Checkout checkout;

//   const ConfirmCheckout({required this.checkout});

//   @override
//   List<Object> get props => [checkout];
// }
