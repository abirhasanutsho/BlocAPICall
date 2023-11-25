import 'package:clean_architecture_project/screens/products/bloc/product_event.dart';
import 'package:clean_architecture_project/screens/products/bloc/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repositories/product_repositories.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepositories productRepositories;

  ProductBloc(this.productRepositories) : super(const ProductLoading()) {
    on<ProductLoadUserEvent>((event, emit) async {
      emit(const ProductLoading());
      try {
        final result = await productRepositories.fetchProducts();
        emit(ProductLoaded(result));
      } catch (e) {
        print("Error in ProductBloc: $e");
        emit(ProductError(e.toString()));
      }
    });
  }
}
