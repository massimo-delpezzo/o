part of 'checkout_bloc.dart';

abstract class CheckoutEvent extends Equatable {
  const CheckoutEvent();

  @override
  List<Object?> get props => [];
}

class UpdateCheckout extends CheckoutEvent {
  final User? user;
  final Cart? cart;
  final PaymentMethod? paymentMethod;
  final String? paymentMethodId;

  UpdateCheckout({
    this.user,
    this.cart,
    this.paymentMethod,
    this.paymentMethodId,
  });

  @override
  List<Object?> get props => [user, cart, paymentMethod, paymentMethodId];
}

class ConfirmCheckout extends CheckoutEvent {
  final Checkout checkout;

  const ConfirmCheckout({required this.checkout});

  @override
  List<Object?> get props => [checkout];
}
