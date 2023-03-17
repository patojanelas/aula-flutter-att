import 'package:flutter/material.dart';

class Questao4 extends StatefulWidget{
  @override
  _Questao4state createState() => _Questao4state();
}

class _Questao4state extends State<Questao4>{
  final TextEditingController _macaController = TextEditingController();
  final TextEditingController _morangosController = TextEditingController();

  String total2 = "";

  void _calculartudo(){
    double macas = double.parse(_macaController.text);
    double morangos = double.parse(_morangosController.text);

    double precomorango = 0;
    double precomacas = 0;
    double total = 0;

    if (morangos < 5) {
      precomorango = morangos * 2.5;
    } else {
      precomorango = morangos * 2.2;
    }

    if(macas < 5) {
      precomacas = macas * 1.80;
    } else {
      precomacas = macas * 1.5;
    }

    if((macas+morangos) >= 8.0 || (precomacas+precomorango) > 25.0){
      total = (precomorango+precomacas) - ((precomorango+precomacas)/10);
    } else{
      total = (precomacas+precomorango);
    }

    setState(() {
      total2 = total.toStringAsFixed(2);
    });

  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Questão 4 do Vandeco')
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _morangosController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Peso de morango: '),
            ),
            TextField(
              controller: _macaController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Peso de maçãs: '),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton.icon(onPressed: _calculartudo, icon: const Icon(Icons.favorite), label: const Text('CALCULAR'),),
            const SizedBox(height: 16.0),
            Text(
              'Valor a ser pago é de R\$ $total2 reais',
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}