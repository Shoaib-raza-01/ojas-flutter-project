import 'package:flutter/material.dart';

class OtherScreen extends StatelessWidget {
  final String pageName;
  const OtherScreen({super.key, required this.pageName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Text(pageName,
          style: TextStyle(
            fontSize : 30,
            color: Colors.orange.shade800,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: "cursive"
          ),
          ),
        ),
      ),
    );
  }
}
