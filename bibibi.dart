import 'package:flutter/material.dart';

class IdadeEmDias extends StatefulWidget {
  @override
  _IdadeEmDiasState createState() => _IdadeEmDiasState();
}

class _IdadeEmDiasState extends State<IdadeEmDias> {
  final TextEditingController _anosController = TextEditingController();
  final TextEditingController _mesesController = TextEditingController();
  final TextEditingController _diasController = TextEditingController();

  int _idadeEmDias = 0;

  void _calcularIdadeEmDias() {
    int anos = int.parse(_anosController.text);
    int meses = int.parse(_mesesController.text);
    int dias = int.parse(_diasController.text);

    int idadeEmDias = (2023 -anos) * 365 + meses * 30 + dias;

    setState(() {
      _idadeEmDias = idadeEmDias;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Idade em Dias'),
      ),
      body: Padding(  
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _anosController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Ano'),
            ),
            TextField(
              controller: _mesesController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Mês'),
            ),
            TextField(
              controller: _diasController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Dia'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _calcularIdadeEmDias,
              child: Text('Calcular Idade em Dias'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Idade em dias: $_idadeEmDias',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
