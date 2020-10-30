import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raahi/presentation/routes/router.gr.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(milliseconds: 500),
      () => ExtendedNavigator.of(context).replace(Routes.home),
    );
    return const Material(
      color: Color(0xff002b36),
      child: Center(
        child: Hero(
          tag: 'logo',
          child: CircleAvatar(
            backgroundColor: Color(0xffb58900),
            radius: 48.0,
            child: Text('Logo'),
          ),
        ),
      ),
    );
  }
}
