import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raahi/application/search/search_bloc.dart';
import 'package:raahi/injection.dart';
import 'package:raahi/presentation/routes/router.gr.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchBloc>(),
      child: BlocConsumer<SearchBloc, SearchState>(
        listener: (context, state) {},
        builder: (context, state) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: const Color(0xff073642),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'search',
                hintStyle: TextStyle(
                  color: Colors.white24,
                  fontFamily: 'Playfair Display',
                  fontSize: 24.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Playfair Display',
                fontSize: 24.0,
                fontWeight: FontWeight.w400,
              ),
              onSubmitted: (_) =>
                  ExtendedNavigator.of(context).push(Routes.search),
            ),
          ),
        ),
      ),
    );
  }
}
