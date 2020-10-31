import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raahi/presentation/core/widgets/search_bar.dart';
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
            SearchBar(),
          ],
        ),
      ),
    );
  }
}
