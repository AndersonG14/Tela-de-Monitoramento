import 'package:flutter/material.dart';

class MockStatusBarWidget extends StatelessWidget {
  const MockStatusBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Lado esquerdo: Hora
          const Text(
            '9:41',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.black87,
              letterSpacing: 0.2,
            ),
          ),

          // Lado direito: Ícones de status
          Row(
            children: [
              Icon(Icons.signal_cellular_4_bar, size: 16, color: Colors.grey.shade800),
              const SizedBox(width: 6),
              Icon(Icons.wifi, size: 16, color: Colors.grey.shade800),
              const SizedBox(width: 6),
              Icon(Icons.battery_full, size: 16, color: Colors.grey.shade800),
            ],
          ),
        ],
      ),
    );
  }
}