import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.purple.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Ini adalah halaman setting'),
            const SizedBox(height: 10),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pop(context); // Kembali ke halaman sebelumnya
              },
              icon: const Icon(Icons.arrow_left, size: 18),
              label: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}

