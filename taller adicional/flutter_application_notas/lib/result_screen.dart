import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double average;
  final double highest;
  final double lowest;

  const ResultScreen(
      {super.key,
      required this.average,
      required this.highest,
      required this.lowest});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Resultados'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ResultCard(
                label: 'Promedio', value: average, color: Colors.lightBlue),
            const SizedBox(height: 10),
            ResultCard(
                label: 'Nota Mayor', value: highest, color: Colors.greenAccent),
            const SizedBox(height: 10),
            ResultCard(
                label: 'Nota Menor', value: lowest, color: Colors.redAccent),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text('Volver'),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultCard extends StatelessWidget {
  final String label;
  final double value;
  final Color color;

  const ResultCard(
      {super.key,
      required this.label,
      required this.value,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              value.toStringAsFixed(2),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class ResultScreen extends StatelessWidget {
//   final double average;
//   final double highest;
//   final double lowest;

//   const ResultScreen(
//       {super.key,
//       required this.average,
//       required this.highest,
//       required this.lowest});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Resultados'),
//       ),
//       body: Center(
//         // Cambiamos el Padding por Center para centrar el contenido
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment:
//                 MainAxisAlignment.center, // Centramos verticalmente
//             children: [
//               // Mostramos los resultados con un texto más grande y centrado
//               Text(
//                 'Promedio: ${average.toStringAsFixed(2)}',
//                 style: const TextStyle(
//                   fontSize: 40, // Tamaño grande
//                   fontWeight: FontWeight.bold, // Texto en negrita
//                 ),
//               ),
//               const SizedBox(height: 20), // Espacio entre los resultados
//               Text(
//                 'Nota Mayor: $highest',
//                 style: const TextStyle(
//                   fontSize: 35, // Tamaño grande
//                   fontWeight: FontWeight.bold, // Texto en negrita
//                 ),
//               ),
//               const SizedBox(height: 20), // Espacio entre los resultados
//               Text(
//                 'Nota Menor: $lowest',
//                 style: const TextStyle(
//                   fontSize: 35, // Tamaño grande
//                   fontWeight: FontWeight.bold, // Texto en negrita
//                 ),
//               ),
//               const SizedBox(height: 40), // Espacio antes del botón
//               // Botón para volver a la pantalla anterior
//               ElevatedButton(
//                 onPressed: () => Navigator.pop(context),
//                 child: const Text('Volver'),
//                 style: ElevatedButton.styleFrom(
//                   padding: const EdgeInsets.symmetric(
//                       vertical: 16.0, horizontal: 32.0), // Botón más grande
//                   textStyle: const TextStyle(
//                       fontSize: 20), // Texto del botón más grande
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
