part of 'product_bloc.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductSuccees extends ProductState {

  final List<Product> products;
  ProductSuccees(this.products);

}

class ProductFailure extends ProductState {

  final String message;
  ProductFailure({required this.message});

}
