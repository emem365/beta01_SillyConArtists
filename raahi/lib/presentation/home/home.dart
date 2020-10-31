import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raahi/application/search/search_bloc.dart';
import 'package:raahi/injection.dart';
import 'package:raahi/presentation/home/widgets/logo.dart';
import 'package:raahi/presentation/home/widgets/search_bar.dart';
import 'package:raahi/presentation/home/widgets/search_results.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchBloc>(),
      child: Scaffold(
        backgroundColor: const Color(0xff002b36),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Logo(),
                SearchBar(),
                SearchResults(),
              ],
            ),
          ),
        ),
    );
  }
}
