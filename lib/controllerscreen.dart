import 'package:flutter/material.dart';
import 'package:pre_dashboard/notifier/index_notifier.dart';
import 'package:pre_dashboard/screens/non_verified/askexpertscreen.dart';
import 'package:pre_dashboard/screens/non_verified/hiremi360screen.dart';
import 'package:pre_dashboard/screens/non_verified/homescreen.dart';
import 'package:pre_dashboard/screens/non_verified/jobscreen.dart';
import 'package:pre_dashboard/screens/non_verified/statusscreen.dart';
import 'package:pre_dashboard/screens/notification_setting_screens/setting_screen.dart';
import 'package:pre_dashboard/widgets/non_verified/custombottombar.dart';
import 'package:provider/provider.dart';

class Controllerscreen extends StatefulWidget {
  const Controllerscreen({super.key});

  @override
  State<Controllerscreen> createState() => _ControllerscreenState();
}

class _ControllerscreenState extends State<Controllerscreen> {
  @override
  Widget build(BuildContext context) {
    final indexNotifier = Provider.of<IndexNotifier>(context);
    List<Widget> screens = [
      const Homescreen(),
      const Jobscreen(),
      const Askexpertscreen(),
      const Statusscreen(),
      const Hiremi360screen(),
      const SettingsScreen(),
    ];
    return Scaffold(
      body: IndexedStack(
        index: indexNotifier.currentIndex,
        children: screens,
      ),
      bottomNavigationBar: Custombottombar(
        currentIndex: indexNotifier.currentIndex,
        onTabSelected: (index) {
          indexNotifier.setIndex(index);
        },
      ),
    );
  }
}
