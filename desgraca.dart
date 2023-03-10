import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Soma de Números',
      home: SomaScreen(),
    );
  }
}

class SomaScreen extends StatefulWidget {
  const SomaScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SomaScreenState createState() => _SomaScreenState();
}

class _SomaScreenState extends State<SomaScreen> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  int resultado = 0;

  void somar() {
    setState(() {
      int num1 = int.parse(num1Controller.text);
      int num2 = int.parse(num2Controller.text);
      resultado = num1 + num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soma de Números'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Número 1',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Número 2',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: somar, child: const Text('somar')),
            const SizedBox(height: 20),
            Text(
              'Resultado: $resultado',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

class RaisedButton {
}
