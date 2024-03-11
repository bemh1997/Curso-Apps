import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      // home: const HomePage(title: 'Flutter Demo Home Page'),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({super.key, required this.title});

//   // Siempre mostraría este mensaje.
//   // final String title = 'Flutter Demo Home Page';
//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//       ),
//       body: const Center(
//         child: AutoSizeText(
//           'Hello World App!!!',
//           style: TextStyle(fontSize: 70),
//         ),
//       ),
//     );
//   }
// }


class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const AutoSizeText(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(FontAwesome.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}