import 'package:clean_architecture_project/models/product_models.dart';
import 'package:equatable/equatable.dart';

abstract class ProductState extends Equatable {
  const ProductState();
}

class ProductLoading extends ProductState {
  const ProductLoading();

  @override
  List<Object?> get props => [];
}

class ProductLoaded extends ProductState {
  final ProductResponse productResponse;

  const ProductLoaded(this.productResponse);

  @override
  List<Object?> get props => [productResponse];
}

class ProductError extends ProductState {
  final String message;
  const ProductError(this.message);

  @override
  List<Object?> get props => [message];
}
