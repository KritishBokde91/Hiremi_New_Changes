import 'package:flutter/material.dart';

class ContactOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final String detail;

  const ContactOption({
    super.key,
    required this.icon,
    required this.title,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFF0F3CC9).withOpacity(0.08)
            ),
            child: Icon(icon, color: const Color(0xFF0F3CC9)),
          ),
          const SizedBox(width: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                detail,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF0F3CC9),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}