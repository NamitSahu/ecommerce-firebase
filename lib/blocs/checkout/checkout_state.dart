part of 'checkout_bloc.dart';

abstract class CheckoutState extends Equatable {
  const CheckoutState();

  @override
  List<Object> get props => [];
}

class CheckoutInitial extends CheckoutState {}

class CheckoutLoaded extends CheckoutState {
  final String? fullname;
  final String? email;
  final String? address;
  final String? city;
  final String? country;
  final String? zipcode;
  final List<Product>? products;
  final String? subtotal;
  final String? deliveryFee;
  final String? total;
  
  // final Checkout checkout;
  // final PaymentMethod paymentMethod;

  const CheckoutLoaded(
      {this.fullname,
      this.email,
      this.address,
      this.city,
      this.country,
      this.zipcode,
      this.products,
      this.subtotal,
      this.deliveryFee,
      this.total});

      @override
  List<Object> get props => [];
}
