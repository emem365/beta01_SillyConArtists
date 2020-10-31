import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raahi/application/navigation/my_location/my_location_bloc.dart';
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
        bottomNavigationBar: BlocBuilder<MyLocationBloc, MyLocationState>(
          builder: (context, state) => state.locationDataOption.fold(
            () => Container(),
            (locationData) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Current Location',
                    style: TextStyle(
                      color: Colors.white24,
                      fontFamily: 'Playfair Display',
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    '${locationData.latitude}, ${locationData.longitude}',
                    style: const TextStyle(
                      color: Colors.white24,
                      fontWeight: FontWeight.w300,
                      fontSize: 11.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
