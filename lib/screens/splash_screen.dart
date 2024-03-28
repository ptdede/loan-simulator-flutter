import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:loan_simulator/ui/construction.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key, required this.onRedirect});

  final VoidCallback onRedirect;
  final duration = const Duration(seconds: 3);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      final timer = Timer(duration, () {
        onRedirect();
      });

      // dispose timer
      return timer.cancel;
    }, []);

    return const Construction();
  }
}
