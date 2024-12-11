import 'package:flutter/material.dart';

class Buildpageindicator extends StatelessWidget {
  final bool isActive;

  const Buildpageindicator({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      height: 8.0,
      width: isActive ? 40.0 : 10.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey[400],
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
