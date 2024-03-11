import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final String title;
  final List<String> opciones = const <String>[
    'Opción 01',
    'Opción 02',
    'Opción 03',
    'Opción 04',
    'Opción 05',
    'Opción 06',
    'Opción 07',
    'Opción 08',
    'Opción 09',
    'Opción 10',
  ];

  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: ListView.separated(
          // itemBuilder: (context, index) => const Text(opciones[index], style: estiloTexto), 
          itemBuilder: (_, i) => getListTile(i),
          separatorBuilder: (_, __) => const Divider(), 
          itemCount: opciones.length
          ),
        ),
    );
  }

  ListTile getListTile( int i){
    const TextStyle estiloTexto = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
    return ListTile(
            leading: const Icon(Icons.alarm_add),
            title: Text(opciones[i], style: estiloTexto),
            trailing: const Icon(Icons.alarm_off),
    );
  }
}
// class HomePage extends StatelessWidget{
//   final String title;
//   const HomePage({super.key, required this.title});

//   @override
//   Widget build(BuildContext context){
//     const TextStyle estiloTexto = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(title),
//       ),
//       body: const Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             SizedBox(width: double.infinity),
//             Text('Opción 01', style: estiloTexto),
//             Divider(),
//             Text('Opción 02', style: estiloTexto),
//             Divider(),
//             Text('Opción 03', style: estiloTexto),
//             Divider(),
//             Text('Opción 04', style: estiloTexto),
//             Divider(),
//             Text('Opción 05', style: estiloTexto),
//             Divider(),
//             Text('Opción 06', style: estiloTexto),
//             Divider(),
//             Text('Opción 07', style: estiloTexto),
//             Divider(),
//             Text('Opción 08', style: estiloTexto),
//             Divider(),
//             Text('Opción 09', style: estiloTexto),
//             Divider(),
//             Text('Opción 10', style: estiloTexto),
//             Divider(),
//             Text('Opción 11', style: estiloTexto),
//             Divider(),
//             Text('Opción 12', style: estiloTexto),
//             Divider(),
//             Text('Opción 13', style: estiloTexto),
//             Divider(),
//             Text('Opción 14', style: estiloTexto),
//             Divider(),
//             Text('Opción 15', style: estiloTexto),
//             Divider(),
//             Text('Opción 16', style: estiloTexto),
//             Divider(),
//             Text('Opción 17', style: estiloTexto),
//             Divider(),
//             Text('Opción 18', style: estiloTexto),
//             Divider(),
//             Text('Opción 19', style: estiloTexto),
//             Divider(),
//             Text('Opción 20', style: estiloTexto),
//           ],
//         ),
//       ),
//     );  
//   }
// }
