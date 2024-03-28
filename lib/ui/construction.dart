import 'package:flutter/material.dart';

class Construction extends StatelessWidget {
  const Construction({super.key, this.pageName = 'This'});

  final String? pageName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('$pageName Screen Under Construction'),
      ),
    );
  }
}
