import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key, required this.onRedirect});

  final VoidCallback onRedirect;

  @override
  Widget build(BuildContext context) {
    final animController = useAnimationController(
      initialValue: -400,
      duration: const Duration(milliseconds: 4000),
    );
    Animation slide1 = _buildTween(
      controller: animController,
      startTime: 0.0,
      endTime: 0.6,
    );

    Animation slide2 = _buildTween(
      controller: animController,
      startTime: 0.20,
      endTime: 0.6,
    );

    Animation slide1Up = _buildTween(
      controller: animController,
      startTime: 0.9,
      endTime: 1,
      begin: 0,
      end: -100,
    );

    Animation slide2Up = _buildTween(
      controller: animController,
      startTime: 0.93,
      endTime: 1,
      begin: 0,
      end: -100,
    );

    useEffect(() {
      animController.forward();
      animController.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          onRedirect();
        }
      });
      return null;
    }, [animController]);

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
                      offset: Offset(slide1.value, slide1Up.value),
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
                      offset: Offset(slide2.value, slide2Up.value),
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
      color: Colors.green,
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
    double begin = -500,
    double end = 0,
  }) {
    return Tween<double>(begin: begin, end: end).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          startTime,
          endTime,
          curve: Curves.easeInOutCubic,
        ),
      ),
    );
  }
}
