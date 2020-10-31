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
            children: const [
              Hero(
                tag: 'logo',
                child: CircleAvatar(
                  backgroundColor: Color(0xffb58900),
                  radius: 48.0,
                  child: Text('Logo'),
                ),
              ),
              Padding(
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
