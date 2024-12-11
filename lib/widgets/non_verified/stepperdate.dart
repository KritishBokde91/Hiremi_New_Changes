import 'package:flutter/material.dart';

class Stepperdate extends StatelessWidget {
  final String label1;
  final String label2;
  final String iconText;
  final IconData iconData;
  const Stepperdate(
      {super.key,
      required this.label1,
      required this.label2, this.iconText = '', this.iconData = Icons.check});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
                spreadRadius: 2,
                blurRadius: 1
              )
            ],
              color: iconText.isNotEmpty ? Colors.white : const Color(0xFF002496),
              borderRadius: BorderRadius.circular(14)),
          child: iconText.isNotEmpty ? Text(
            iconText,
            style: const TextStyle(color: Color(0xFF0174C8), fontSize: 14),
            textAlign: TextAlign.center,
          ) : Icon(iconData, color: Colors.white, size: 16,),
        ),
        const SizedBox(
          height: 9,
        ),
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: '$label1\n',
                style: TextStyle(fontSize: height * 0.01),
                children: [TextSpan(text: label2)]))
      ],
    );
  }
}
