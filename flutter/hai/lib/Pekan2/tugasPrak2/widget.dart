import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MaterialApp(home: PraktikumWidget()));
}

class PraktikumWidget extends StatelessWidget {
  const PraktikumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Praktikum Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 40),
                const SizedBox(width: 20),
                const Icon(
                  CupertinoIcons.heart_fill,
                  color: Colors.red,
                  size: 40,
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Klik Saya'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Ini tampilan vertikal',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 40),
                const SizedBox(width: 20),
                const Icon(
                  CupertinoIcons.heart_fill,
                  color: Colors.red,
                  size: 40,
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Klik Saya'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Ini tampilan horizontal (Row di atas)',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
