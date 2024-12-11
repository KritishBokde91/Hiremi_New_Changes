import 'package:flutter/material.dart';
import 'package:pre_dashboard/widgets/non_verified/custombottombar.dart';

class HelpAndSupport extends StatefulWidget {
  final int currentIndex;
  const HelpAndSupport({super.key, required this.currentIndex});

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
  late int realIndex;
  @override
  void initState() {
    super.initState();
    realIndex = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu, size: 28,),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        title: const Text(
          'Help & Support',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Stack(
              children: [
                const Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                Positioned(
                  top: size.height * 0.001,
                  right: size.width * 0.008,
                  child: Container(
                    height: size.height * 0.015,
                    width: size.width * 0.033,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.5),
                        color: const Color(0xFFDBE4FF)),
                    child: Center(
                        child: Text(
                          '3',
                          style:
                          TextStyle(fontSize: size.width * 0.023, fontWeight: FontWeight.bold, color: const Color(0xFF0F3CC9)),
                        )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              // Illustration
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/help_and_support.png',
              ),
              const SizedBox(height: 20),

              // Title
              const Text(
                'Hiremi',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              // Subtitle
              const Text(
                'Elevate Your Career, Empower Your Business',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),

              // Description
              const Text(
                'Hiremi is a platform designed for business growth, providing recruitment solutions and a hiring platform.\n\n'
                    'We provide career guidance for college students and graduates, supporting them throughout their journey and helping them achieve their desired career goals. Additionally, we provide internship and job opportunities.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 20),

              // Learn More Button
              TextButton(
                onPressed: () {
                  // Handle Learn More button tap
                },
                child: const Text(
                  'Learn More',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Custombottombar(currentIndex: realIndex, onTabSelected: (index) => setState(() {
        realIndex = index;
      })),
    );
  }
}
