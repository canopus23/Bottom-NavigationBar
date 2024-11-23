import 'package:flutter/material.dart';
import 'package:untitled/screens/UsageScreen.dart';
import 'package:untitled/theme/theme.dart';
import 'landing_page.dart'; // Import other screens as needed
import 'widgets/bottom_nav_bar.dart'; // Assuming you've already created this widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme, // Use custom theme
      home: BottomNavScreen(), // Use BottomNavScreen as the home
    );
  }
}

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0; // Track the currently selected index

  // List of screens that will be navigated to
  final List<Widget> _screens = [
    LandingPage(),      // Home screen
    UsageDataScreen(),  // Second screen for usage data
    // Add more screens as needed
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true, // Extend the body to allow content under the BottomNavigationBar
      body: Stack(
        children: [
          _screens[_selectedIndex], // Display the current screen
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomNavigationBarWidget(
              selectedIndex: _selectedIndex,
              onItemTapped: _onItemTapped, // Pass the callback to update selected index
            ),
          ),
        ],
      ),
    );
  }
}
