import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raahi/application/navigation/my_location/my_location_bloc.dart';
import 'package:raahi/application/search/search_bloc.dart';
import 'package:raahi/presentation/home/widgets/search_tile.dart';
import 'package:raahi/presentation/routes/router.gr.dart';

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
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => context
                    .bloc<MyLocationBloc>()
                    .state
                    .locationDataOption
                    .fold(() => null, (location) {
                  context.bloc<SearchBloc>().add(SearchEvent.startNavigation(
                      index: index, locationData: location));
                  ExtendedNavigator.of(context).push(Routes.navigation,
                      arguments: NavigationArguments(
                          resultObject: resultObjects[index]));
                }),
                child: SearchTile(
                  title: resultObjects[index].name.getOrCrash(),
                  distance: resultObjects[index].cityName,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
