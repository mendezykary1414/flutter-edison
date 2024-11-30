import 'package:flutter/material.dart';
import 'input_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const InputScreen(),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'input_screen.dart'; // Importamos la pantalla de entrada de notas

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Aquí estamos configurando el tema de la app
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home:
//           const InputScreen(), // Mostramos la pantalla para ingresar las notas
//     );
//   }
// }
