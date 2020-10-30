import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raahi/presentation/routes/router.gr.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff002b36),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Hero(
              tag: 'logo',
              child: CircleAvatar(
                backgroundColor: Color(0xffb58900),
                radius: 48.0,
                child: Text('Logo'),
              ),
            ),
            const Padding(padding: EdgeInsets.all(16.0)),
            Container(
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
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'search',
                    hintStyle: TextStyle(
                      color: Colors.white24,
                      fontFamily: 'Playfair Display',
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Playfair Display',
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400,
                  ),
                  onSubmitted: (_) =>
                      ExtendedNavigator.of(context).push(Routes.navigation),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
