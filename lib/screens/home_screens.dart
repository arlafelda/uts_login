import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 47, 146, 174),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.white),
            onPressed: () {
              // Kembali ke halaman login
              Navigator.pushNamedAndRemoveUntil(
                context, 
                '/login',
                (route) => false,
              );
            },
          ),
        ],
      ),
      backgroundColor: Colors.black, // Background halaman hitam
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              // Welcome Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF4E7D96), Color(0xFF6A9BB2)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 153, 151, 151).withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Arlafelda', // Ganti dengan nama kalian coy
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // Menu Grid
              const Text(
                'Quick Menu',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4E7D96),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15, // Mengurangi jarak antar kolom
                  mainAxisSpacing: 15, // Mengurangi jarak antar baris
                  children: [
                    _buildMenuCard(
                      icon: Icons.person,
                      title: 'Profile',
                      onTap: () {},
                    ),
                    _buildMenuCard(
                      icon: Icons.settings,
                      title: 'Settings',
                      onTap: () {},
                    ),
                    _buildMenuCard(
                      icon: Icons.notifications,
                      title: 'Notifications',
                      onTap: () {},
                    ),
                    _buildMenuCard(
                      icon: Icons.help,
                      title: 'Help',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuCard({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,  // Sesuaikan lebar kotak
        height: 100, // Sesuaikan tinggi kotak
        decoration: BoxDecoration(
          color: Colors.black, // Ubah warna latar belakang kotak menjadi hitam
          borderRadius: BorderRadius.circular(15), // Membuat sudut kotak lebih melengkung
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 2, 2, 2).withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 30, // Mengecilkan ukuran icon
              color: const Color.fromARGB(255, 24, 183, 211), // Warna icon tetap
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14, // Mengecilkan ukuran teks
                fontWeight: FontWeight.w500,
                color: Colors.white, // Ubah warna teks menjadi putih agar terlihat
              ),
            ),
          ],
        ),
      ),
    );
  }
}
