import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raahi/application/navigation/my_location/my_location_bloc.dart';
import 'package:raahi/injection.dart';
import 'package:raahi/presentation/routes/router.gr.dart';
import 'package:raahi/presentation/routes/router.gr.dart' as router;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MyLocationBloc>()..add(const MyLocationEvent.getPermission()),
      child: MaterialApp(
        builder: ExtendedNavigator(
          name: 'nav',
          router: router.Router(),
          initialRoute: Routes.splash,
        ),
        title: 'Raahi',
      ),
    );
  }
}
