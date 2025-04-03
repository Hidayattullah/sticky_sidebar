// sidebar.dart
import 'package:flutter/material.dart';

class SideHeader extends StatelessWidget {
  final String label;

  const SideHeader({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      // Menggunakan Align untuk menempatkan widget di sebelah kiri
      child: Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 44,
          height: 44,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
