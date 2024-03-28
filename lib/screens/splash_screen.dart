import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key, required this.onRedirect});

  final VoidCallback onRedirect;

  @override
  Widget build(BuildContext context) {
    final animController = useAnimationController(
      initialValue: -400,
      duration: const Duration(milliseconds: 3000),
    );
    Animation slide1 = _buildTween(
      controller: animController,
      startTime: 0.0,
      endTime: 0.60,
    );

    Animation slide2 = _buildTween(
      controller: animController,
      startTime: 0.20,
      endTime: 0.8,
    );

    useEffect(() {
      animController.forward();
      animController.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          onRedirect();
        }
      });
      return null;
    }, []);

    return Scaffold(
      body: Material(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedBuilder(
                builder: (context, anim) {
                  return ClipRect(
                    child: Transform.translate(
                      offset: Offset(slide1.value, 0),
                      child: _buildTextSquare('Welcome!'),
                    ),
                  );
                },
                animation: animController,
              ),
              const SizedBox(height: 8),
              AnimatedBuilder(
                builder: (context, anim) {
                  return ClipRect(
                    child: Transform.translate(
                      offset: Offset(slide2.value, 0),
                      child: _buildTextSquare('Loan Calculator App'),
                    ),
                  );
                },
                animation: animController,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextSquare(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      color: Colors.white,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }

  Animation<double> _buildTween({
    required AnimationController controller,
    required double startTime,
    required double endTime,
  }) {
    return Tween<double>(begin: -400, end: 0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          startTime,
          endTime,
          curve: Curves.easeInOut,
        ),
      ),
    );
  }
}
