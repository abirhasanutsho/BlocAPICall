import 'package:clean_architecture_project/screens/products/bloc/product_bloc.dart';
import 'package:clean_architecture_project/screens/products/bloc/product_event.dart';
import 'package:clean_architecture_project/screens/products/page/product_page.dart';
import 'package:clean_architecture_project/screens/products/repositories/product_repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) =>
          ProductRepositories(), // adjust this based on your implementation
      child: BlocProvider(
        create: (context) =>
            ProductBloc(RepositoryProvider.of<ProductRepositories>(context))
              ..add(ProductLoadUserEvent()),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const ProductPage(),
        ),
      ),
    );
  }
}
