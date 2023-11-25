import 'package:equatable/equatable.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();
}

class ProductLoadUserEvent extends ProductEvent {
  @override
  List<Object?> get props => [];
}
