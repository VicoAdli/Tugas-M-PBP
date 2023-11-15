import 'package:flutter/material.dart';
import 'package:pbp_project/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider =
        Provider.of<AuthProvider>(context, listen: false);

    // Logika logout dengan menggunakan provider
    authProvider.logout();

    // Setelah logout, kita akan membawa pengguna ke halaman login.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Anda berhasil logout!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman login setelah logout
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: const Text('Login Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
