import 'package:flutter/material.dart';

class SearchTile extends StatelessWidget {
  final String title;
  final String distance;

  const SearchTile({@required this.title, @required this.distance});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontFamily: 'Playfair Display',
                    fontSize: 22.0,
                  ),
                ),
                Text(
                  distance,
                  style: const TextStyle(
                    color: Colors.white54,
                    fontFamily: 'Playfair Display',
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white12,
            width: MediaQuery.of(context).size.width,
            height: 0.75,
          ),
        ],
      ),
    );
  }
}
