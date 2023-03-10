import 'package:flutter/material.dart';

class Questao2 extends StatefulWidget{
  @override
  _Questao2state createState() => _Questao2state();
}

class _Questao2state extends State<Questao2> {
  final TextEditingController _totalController = TextEditingController();
  final TextEditingController _brancosController = TextEditingController();
  final TextEditingController _nulosController = TextEditingController();

  String _porcentagem1 = '';
  String _porcentagem2 = '';
  String _validos = '';

  void _calculartudo(){
    int total = int.parse(_totalController.text);
    int brancos = int.parse(_brancosController.text);
    int nulos = int.parse(_nulosController.text);

    int validos = total - brancos - nulos;
    double validos2 = ((validos * 100) / total);

    double porcentagem1 = ((brancos * 100) / total);
    double porcentagem2 = ((nulos * 100) / total);

    String porcentagem4 = porcentagem1.toStringAsFixed(2);
    String porcentagem3 = porcentagem2.toStringAsFixed(2);
    String validos3 = validos2.toStringAsFixed(2);

    setState(() {
      _porcentagem1 = porcentagem4;
      _porcentagem2 = porcentagem3;
      _validos = validos3;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Questão 2 do Vandeco')
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _totalController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Quantidade de votos totais:'),
            ),
            TextField(
              controller: _brancosController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Quantidade de votos brancos:')
            ),
            TextField(
              controller: _nulosController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Quantidade de votos nulos:')
            ),
            const SizedBox(height: 16.0),
            ElevatedButton.icon(onPressed: _calculartudo, icon: const Icon(Icons.favorite), label:const Text('CALCULAR'),),
            const SizedBox(height: 16.0),
            Text(
              'Votos brancos: $_porcentagem1 %',
              style: const TextStyle(fontSize: 16.0),
            ),
            Text(
              'Votos nulos: $_porcentagem2 %',
              style: const TextStyle(fontSize: 16.0),
            ),
            Text(
              'Votos válidos: $_validos %',
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}