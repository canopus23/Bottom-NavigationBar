import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  BottomNavigationBarWidget({required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 20),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: Offset(0, -5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavIcon(Icons.home, 0),
            _buildNavIcon(Icons.bar_chart, 1),
            _buildNavIcon(Icons.settings, 2),
            _buildNavIcon(Icons.pages, 3),
          ],
        ),
      ),
    );
  }

  Widget _buildNavIcon(IconData icon, int index) {
    bool isActive = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        onItemTapped(index); // Update selected index on tap
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            duration: 300.ms, // Duration of the animation
            curve: Curves.easeInOut,
            width: isActive ? 10 : 0, // Highlight indicator size
            height: isActive ? 10 : 0,
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              color: Colors.teal,
              shape: BoxShape.circle,
            ),
          ),
          Icon(
            icon,
            color: isActive ? Colors.teal : Colors.grey,
            size: isActive ? 26 : 22,
          ).animate(target: isActive ? 1 : null) // Apply animation only if active
              .scale(begin: Offset(1, 1), end: Offset(1.2, 1.2)) // Scale effect
              .fadeIn(duration: 200.ms), // Smooth fade-in for the active icon
        ],
      ),
    );
  }
}
