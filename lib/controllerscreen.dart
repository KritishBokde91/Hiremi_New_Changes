import 'package:flutter/material.dart';
import 'package:pre_dashboard/screens/non_verified/askexpertscreen.dart';
import 'package:pre_dashboard/screens/non_verified/hiremi360screen.dart';
import 'package:pre_dashboard/screens/non_verified/homescreen.dart';
import 'package:pre_dashboard/screens/non_verified/jobscreen.dart';
import 'package:pre_dashboard/screens/non_verified/statusscreen.dart';
import 'package:pre_dashboard/widgets/non_verified/custombottombar.dart';

class Controllerscreen extends StatefulWidget {
  const Controllerscreen({super.key});

  @override
  State<Controllerscreen> createState() => _ControllerscreenState();
}

class _ControllerscreenState extends State<Controllerscreen> {
  int currentIndex = 0;
  void _onTabSelected(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const Homescreen(),
      const Jobscreen(),
      const Askexpertscreen(),
      const Statusscreen(),
      const Hiremi360screen()
    ];
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Custombottombar(
        currentIndex: currentIndex,
        onTabSelected: _onTabSelected,
      ),
    );
  }
}
