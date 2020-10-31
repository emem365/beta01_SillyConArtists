import 'package:flutter/material.dart';

class ErrorOccurred extends StatelessWidget {
  final String error;

  const ErrorOccurred({@required this.error});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffdc322f),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Icon(Icons.error_rounded),
          ),
          Text(error),
        ],
      ),
    );
  }
}
