import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      theme: ThemeData(
        // Use the desired pink color as the primary color
        primarySwatch: Colors.pink, // Default pink color for the theme
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.light(
          primary: Colors.pinkAccent, // Define custom primary color for the theme
          onPrimary: Colors.white, // Adjust text/icon color for buttons, etc.
          secondary: Colors.pink[300]!, // Accent color
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
