import 'package:flutter/material.dart';
import 'package:raahi/presentation/core/widgets/search_bar.dart';
import 'package:raahi/presentation/search/widgets/search_tile.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff002b36),
      appBar: PreferredSize(
        preferredSize: Size(100.0, 180.0),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SearchBar(),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24.0,
          right: 24.0,
          bottom: 24.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff073642),
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: ListView(
            children: const [
              SearchTile(title: 'Place One', distance: '20 km.'),
              SearchTile(title: 'Place Two', distance: '500 m.'),
            ],
          ),
        ),
      ),
    );
  }
}
