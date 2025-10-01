import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Kabataku Kalkulator')),
        body: const KabatakuCalculator(),
      ),
    );
  }
}

class KabatakuCalculator extends StatefulWidget {
  const KabatakuCalculator({super.key});

  @override
  State<KabatakuCalculator> createState() => _KabatakuCalculatorState();
}

class _KabatakuCalculatorState extends State<KabatakuCalculator> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  String _result = '';

  void _calculate(String operator) {
    final num1 = double.tryParse(_controller1.text);
    final num2 = double.tryParse(_controller2.text);

    if (num1 == null || num2 == null) {
      setState(() {
        _result = 'Input tidak valid!';
      });
      return;
    }

    double hasil;
    switch (operator) {
      case '+':
        hasil = num1 + num2;
        break;
      case '-':
        hasil = num1 - num2;
        break;
      case '×':
        hasil = num1 * num2;
        break;
      case '÷':
        if (num2 == 0) {
          _result = 'Tidak bisa dibagi 0!';
          setState(() {});
          return;
        }
        hasil = num1 / num2;
        break;
      default:
        hasil = 0;
    }
    setState(() {
      _result = 'Hasil: $hasil';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Angka pertama',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _controller2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Angka kedua',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _calculate('+'),
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: () => _calculate('-'),
                  child: const Text('-'),
                ),
                ElevatedButton(
                  onPressed: () => _calculate('×'),
                  child: const Text('×'),
                ),
                ElevatedButton(
                  onPressed: () => _calculate('÷'),
                  child: const Text('÷'),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              _result,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
