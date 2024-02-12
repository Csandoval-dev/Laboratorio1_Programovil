import 'package:flutter/material.dart';
import 'package:flutter_laboratorio1_programovil/presentation/screens/screens/home/widgets/menu_drawer.dart';

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

  // Tasas de cambio de ejemplo
  final Map<String, double> _exchangeRates = {
    'Dólares-Lempiras': 24.5,
    'Dólares-Euros': 0.82,
    'Euros-Lempiras': 29.86,
    'Euros-Dólares': 1.22,
    'Lempiras-Dólares': 0.041,
    'Lempiras-Euros': 0.034
  };

  void _convertCurrency() {
    // Verificar la tasa de cambio seleccionada y calcular el monto convertido
    setState(() {
      final exchangeRateKey = '$_fromCurrency-$_toCurrency';
      final exchangeRate = _exchangeRates[exchangeRateKey];
      _convertedAmount = _amount * exchangeRate!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambio de Monedas'),
      ),
      drawer: const MenuDrawer(), // Agregar el MenuDrawer como el drawer
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
