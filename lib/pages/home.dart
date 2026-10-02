import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Menangkap argumen yang dikirim dari halaman Login[cite: 1]
    final Map<String, String> args = 
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.purple.shade200,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Selamat Datang ${args['username']}, Password anda adalah:\n${args['password']}',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              OutlinedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/setting');
                },
                icon: const Icon(Icons.settings),
                label: const Text('Setting'),
              ),
              const SizedBox(height: 10),
              OutlinedButton.icon(
                onPressed: () {
                  // Mengirim data username ke halaman profile
                  Navigator.pushNamed(
                    context, 
                    '/profile', 
                    arguments: args['username']
                  );
                },
                icon: const Icon(Icons.person),
                label: const Text('Profile'),
              ),
              const SizedBox(height: 10),
              OutlinedButton.icon(
                onPressed: () {
                  // Kembali ke halaman login
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.logout),
                label: const Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}