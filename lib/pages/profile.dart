import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Menangkap data username yang dikirim dari Home Page
    final String username = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        // Sesuai screenshot output tugas, nama appbar di halaman profil tertulis "Setting"
        title: const Text('Profile', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.purple.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Ini adalah halaman profile'),
            Text('Ini adalah profile $username'), // Menampilkan username
            const SizedBox(height: 10),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pop(context); 
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

