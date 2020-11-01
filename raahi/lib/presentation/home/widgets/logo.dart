import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raahi/application/search/search_bloc.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) => state.searchInput.value.fold(
        (failure) => failure.maybeMap(
          empty: (_) => Column(
            children: [
              Hero(
                tag: 'logo',
                child: Image.asset(
                  'assets/icon.png',
                  width: 64.0,
                  height: 64.0,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
              ),
            ],
          ),
          orElse: () => Container(),
        ),
        (r) => Container(),
      ),
    );
  }
}
