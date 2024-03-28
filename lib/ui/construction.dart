import 'package:flutter/material.dart';

class Construction extends StatelessWidget {
  const Construction({super.key, this.pageName = 'This'});

  final String? pageName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          '$pageName Screen Under Construction',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
