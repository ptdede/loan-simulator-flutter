import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LcButton extends HookWidget {
  const LcButton({
    super.key,
    required this.child,
    this.onPressed,
    this.isLoading = false,
  });

  final VoidCallback? onPressed;
  final bool isLoading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: key,
      onPressed: !isLoading ? onPressed : null,
      child: isLoading ? _buildLoader() : child,
    );
  }

  Widget _buildLoader() {
    return const SizedBox(
      height: 18,
      width: 18,
      child: CircularProgressIndicator(),
    );
  }
}
