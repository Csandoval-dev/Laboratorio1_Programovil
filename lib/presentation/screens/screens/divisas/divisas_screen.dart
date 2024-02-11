import 'package:flutter/material.dart';

class CambioMonedasScreen extends StatefulWidget {
  const CambioMonedasScreen({Key? key}) : super(key: key);

  @override
  _CambioMonedasScreenState createState() => _CambioMonedasScreenState();
}

class _CambioMonedasScreenState extends State<CambioMonedasScreen> {
  String _fromCurrency = 'Dólares';
  String _toCurrency = 'Lempiras';
  double _amount = 0.0;
  double _convertedAmount = 0.0;

  void _convertCurrency() {
    // Aquí implementa la lógica para calcular el cambio de moneda
    // Utiliza tasas de cambio o algoritmos de conversión apropiados
    // Por ahora, simplemente asignamos un valor de ejemplo al resultado
    setState(() {
      _convertedAmount = _amount * 24.5; // Tasa de cambio de dólar a lempira
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambio de Monedas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton<String>(
              value: _fromCurrency,
              onChanged: (newValue) {
                setState(() {
                  _fromCurrency = newValue!;
                });
              },
              items: <String>['Dólares', 'Euros', 'Lempiras']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            DropdownButton<String>(
              value: _toCurrency,
              onChanged: (newValue) {
                setState(() {
                  _toCurrency = newValue!;
                });
              },
              items: <String>['Dólares', 'Euros', 'Lempiras']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _amount = double.tryParse(value) ?? 0.0;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Monto a Convertir',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _convertCurrency,
              child: const Text('Calcular Cambio'),
            ),
            const SizedBox(height: 20),
            Text(
              'Resultado: $_convertedAmount $_toCurrency',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
