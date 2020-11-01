import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raahi/application/search/search_bloc.dart';
import 'package:raahi/presentation/home/widgets/search_tile.dart';

class SearchResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) => state.resultObjects.fold(
        () => Container(),
        (resultObjects) => Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff073642),
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: resultObjects.length,
              itemBuilder: (context, index) => SearchTile(
                title: resultObjects[index].name.getOrCrash(),
                distance: resultObjects[index].cityName,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
