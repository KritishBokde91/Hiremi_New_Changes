import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pre_dashboard/screens/splash_screens/splash_screen1.dart';
import 'package:provider/provider.dart';

import 'controllerscreen.dart';
import 'notifier/index_notifier.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => IndexNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pre dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
          textTheme: TextTheme(

          bodyMedium: GoogleFonts.poppins(
            fontSize: MediaQuery.of(context).size.width*0.035,
            fontWeight: FontWeight.w500,
          ),
           titleLarge: GoogleFonts.poppins(
            fontSize: MediaQuery.of(context).size.width * 0.07,
            fontWeight: FontWeight.w800,
            color: const Color(0xFF163EC8),
          ),
          bodySmall: GoogleFonts.poppins(
            fontSize: MediaQuery.of(context).size.width * 0.03,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
          headlineSmall: GoogleFonts.poppins(
            fontSize: MediaQuery.of(context).size.width * 0.07,
            color: const Color(0xFF6983D9),
          ),
        ),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
