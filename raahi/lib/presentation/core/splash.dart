import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raahi/application/navigation/my_location/my_location_bloc.dart';
import 'package:raahi/presentation/routes/router.gr.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<MyLocationBloc, MyLocationState>(
      listener: (context, state) {
        state.permissionFailureOrSuccessOption.fold(
          () => null,
          (failureOrSuccess) => failureOrSuccess.fold(
            (failure) => ExtendedNavigator.of(context).replace(
                Routes.errorOccurred,
                queryParams: {'error': 'Permission Denied'}),
            (_) => context.bloc<MyLocationBloc>().add(
                  const MyLocationEvent.getStatus(),
                ),
          ),
        );
        state.statusFailureOrSuccessOption.fold(
          () => null,
          (failureOrSuccess) => failureOrSuccess.fold(
            (failure) => ExtendedNavigator.of(context).replace(
                Routes.errorOccurred,
                queryParams: {'error': 'Location Services Disabled'}),
            (_) => context.bloc<MyLocationBloc>().add(
                  const MyLocationEvent.listenToLocation(),
                ),
          ),
        );
        state.locationDataOption.fold(
          () => null,
          (_) => ExtendedNavigator.of(context).replace(Routes.home),
        );
      },
      child: Material(
        color: const Color(0xff002b36),
        child: Center(
          child: Hero(
            tag: 'logo',
            child: Image.asset(
              'assets/icon.png',
              width: 96.0,
              height: 96.0,
            ),
          ),
        ),
      ),
    );
  }
}
