import 'package:clean_architecture_project/screens/products/bloc/product_bloc.dart';
import 'package:clean_architecture_project/screens/products/bloc/product_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state is ProductLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }


          if (state is ProductLoaded) {
            return ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: state.productResponse.popular!.length,
              itemBuilder: (_, index) {
                return ListTile(
                  title: Text(state.productResponse.popular![index].name!),
                );
              },
            );
          }
          if (state is ProductError) {
            return const Center(
              child: Text("Something Went Wrong"),
            );
          }


          return const SizedBox();
        },
      ),
    );
  }
}
