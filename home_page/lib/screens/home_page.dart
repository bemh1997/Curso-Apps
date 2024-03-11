import 'package:flutter/material.dart';

class MenuOption {
  final IconData leadIcon;
  final IconData trailIcon;
  final String title;

  const MenuOption({required this.title, required this.leadIcon, required this.trailIcon});
}

class HomePage extends StatelessWidget{
  final String title;
  final List<MenuOption> opciones = const <MenuOption>[
    MenuOption(title:'Opción 01', leadIcon: Icons.add, trailIcon: Icons.alarm),
    MenuOption(title:'Opción 02', leadIcon: Icons.backpack, trailIcon: Icons.alarm),
    MenuOption(title:'Opción 03', leadIcon: Icons.cable_sharp, trailIcon: Icons.alarm),
    MenuOption(title:'Opción 04', leadIcon: Icons.dangerous, trailIcon: Icons.alarm),
    MenuOption(title:'Opción 05', leadIcon: Icons.earbuds, trailIcon: Icons.alarm),
    MenuOption(title:'Opción 06', leadIcon: Icons.face_3_sharp, trailIcon: Icons.alarm),
    MenuOption(title:'Opción 07', leadIcon: Icons.gamepad, trailIcon: Icons.alarm),
    MenuOption(title:'Opción 08', leadIcon: Icons.h_mobiledata, trailIcon: Icons.alarm),
    MenuOption(title:'Opción 09', leadIcon: Icons.ice_skating, trailIcon: Icons.alarm),
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
            leading: Icon(opciones[i].leadIcon),
            title: Text(opciones[i].title, style: estiloTexto),
            trailing: Icon(opciones[i].trailIcon),
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
