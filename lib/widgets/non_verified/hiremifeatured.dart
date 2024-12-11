import 'package:flutter/material.dart';
import 'package:pre_dashboard/widgets/non_verified/unlockexclusivebenefit.dart';

class Hiremifeatured extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final List<Color> gradientColors;
  final VoidCallback onTap;
  final double titleSize;
  final double subtitleSize;

  const Hiremifeatured({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.gradientColors,
    required this.onTap,
    required this.titleSize,
    required this.subtitleSize,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // Calculate responsive sizes
    final imageHeight = size.width * 0.18; // Increased image size
    final imagePadding = size.width * 0.04;

    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => Unlockexclusivebenefit(
            onClose: () => Navigator.pop(context),
          ),
        );
      },
      borderRadius: BorderRadius.circular(size.width * 0.03),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: imagePadding,
          vertical: imagePadding * 0.75,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            stops: const [0.4, 0.8, 0.9],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(size.width * 0.03),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: titleSize,
                      color: const Color(0xFF333333),
                    ),
                  ),
                  SizedBox(height: size.width * 0.01),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: subtitleSize,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Image.asset(
                imagePath,
                height: imageHeight,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}