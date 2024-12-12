import 'package:flutter/material.dart';
import 'package:pre_dashboard/widgets/non_verified/custombottombar.dart';

import '../../widgets/non_verified/contact_option.dart';

class HelpAndSupport2 extends StatefulWidget {
  const HelpAndSupport2({super.key});

  @override
  State<HelpAndSupport2> createState() => _HelpAndSupport2State();
}

class _HelpAndSupport2State extends State<HelpAndSupport2> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          "Help & Support",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'assets/images/help_and_support2.png',
                  height: 200,
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Got App Related Query?",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(height: 20),
              const ContactOption(
                icon: Icons.phone,
                title: "Phone:",
                detail: "+91 89 7845 4512",
              ),
              const ContactOption(
                icon: Icons.language,
                title: "Website:",
                detail: "www.hiremi.in",
              ),
              const ContactOption(
                icon: Icons.send,
                title: "Email:",
                detail: "hiremi@support.com",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Custombottombar(currentIndex: currentIndex, onTabSelected: (index) => setState(() {
        currentIndex = index;
      })),
    );
  }
}