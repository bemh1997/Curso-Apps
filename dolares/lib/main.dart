import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() {
  runApp(const DolarApp());
}

class DolarApp extends StatelessWidget {
  const DolarApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Convertidor de Dolares a Peso Mexicano'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _pesos = 0;
  double _dolares = 0;
  double _factor = 0.25;
  final double _tasa = 17.02;

  void _controller(double incrementDolar, double incrementFactor){
    if(incrementDolar < 0 && (_dolares + incrementDolar) < 0) return;
    if(incrementFactor < 0 && (_factor + incrementFactor) < 0) return;
    setState(() {
      _dolares += incrementDolar;
      _factor += incrementFactor; 
      _pesos= _dolares * _tasa;
    });
  }

  void _reset() {
    setState((){
      _dolares= 0;
      _pesos = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AutoSizeText(
              '1 Dólar estadounidense es igual a $_tasa pesos mexicanos',
            ),
            AutoSizeText(
              'Total: \$$_pesos',
              style: Theme.of(context).textTheme.headlineMedium
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 2, right: 10),
                  child: FloatingActionButton(      
                    onPressed: ()=> _controller(- _factor, 0),
                    tooltip: 'Convertir',
                    child: const Icon(FontAwesomeIcons.minus),
                  ),
                ),
                AutoSizeText(
                  '\$ $_dolares',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 2),
                  child: FloatingActionButton(      
                    onPressed: ()=> _controller( _factor, 0),
                    tooltip: 'Convertir',
                    child: const Icon(FontAwesomeIcons.plus),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2, right: 2),
                  child: FloatingActionButton(      
                    onPressed: _reset,
                    tooltip: 'Borrar',
                    child: const Icon(FontAwesomeIcons.eraser),
                  ),
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}
