import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ProfilePage()));
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Saya')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              // Foto profil
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  'assets/profil.png',
                ), // ganti dengan path foto Anda
              ),
              const SizedBox(height: 20),
              // Nama
              const Text(
                'Nama: Rifki Yuliandra',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              // NIM
              const Text('NIM: 2311532011', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 10),
              // Alamat
              Row(
                children: const [
                  Icon(Icons.home, color: Colors.blue),
                  SizedBox(width: 10),
                  Expanded(child: Text('Alamat: Jl. Pal Merah No. 5, Air Tawar Timur, Kota Padang')),
                ],
              ),
              const SizedBox(height: 10),
              // Nomor handphone
              Row(
                children: const [
                  Icon(Icons.phone, color: Colors.green),
                  SizedBox(width: 10),
                  Text('HP: 085805138605'),
                ],
              ),
              const SizedBox(height: 10),
              // Jurusan
              Row(
                children: const [
                  Icon(Icons.school, color: Colors.orange),
                  SizedBox(width: 10),
                  Text('Jurusan: Informatika'),
                ],
              ),
              const SizedBox(height: 20),
              // Tombol
              ElevatedButton(
                onPressed: () {},
                child: const Text('Edit Profil'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
