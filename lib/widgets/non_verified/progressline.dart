import 'package:flutter/material.dart';

class Progressline extends StatelessWidget {
  const Progressline({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
    padding: EdgeInsets.only(top: 4.0),
    child: SizedBox(
      width: 30, // Set the desired width
      child: Divider(
        thickness: 2, // Thickness of the line
        color: Color(0xFF0472E3), // Line color
      ),
    ),
    );
  }
}
