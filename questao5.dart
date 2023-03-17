import 'package:flutter/material.dart';

class Questao5 extends StatefulWidget{
  @override
  _Questao5state createState() => _Questao5state();
}

class _Questao5state extends State <Questao5>{
  final TextEditingController _textoController = TextEditingController();
  final TextEditingController _letraController = TextEditingController();

  int i = 0;
  int total = 0;
  String letra = '';

  void contar (){
    List var1 = _textoController.text.split("");
    String caractere = _letraController.text;
    int c = 0;

    for (var i in var1){
      if ( i == caractere){
        c++;
      }
    }

    setState(() {
      total = c;
      letra = caractere;
    });

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Questão 5 do Vandeco')
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _textoController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(labelText: 'Digite o texto: '),
            ),
            TextField(
              controller: _letraController,
              keyboardType: TextInputType.text,
              maxLength: 1,
              decoration: const InputDecoration(labelText: 'Digite o caractere a contar: '),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton.icon(onPressed: contar, icon: const Icon(Icons.facebook), label: const Text('Contar tudo')),
            const SizedBox(height: 16.0),
            Text(
              'A quantidade de vezes que o caractere \'$letra\' aparece no texto é $total',
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}