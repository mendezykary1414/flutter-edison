// import 'package:flutter/material.dart';
// import 'result_screen.dart';

// class InputScreen extends StatefulWidget {
//   const InputScreen({super.key});

//   @override
//   _InputScreenState createState() => _InputScreenState();
// }

// class _InputScreenState extends State<InputScreen> {
//   final List<TextEditingController> _controllers =
//       List.generate(5, (index) => TextEditingController());

//   @override
//   void dispose() {
//     for (var controller in _controllers) {
//       controller.dispose();
//     }
//     super.dispose();
//   }

//   void _calculateResults() {
//     List<double> notes = _controllers
//         .map((controller) => double.parse(controller.text))
//         .toList();
//     double average = notes.reduce((a, b) => a + b) / notes.length;
//     double highest = notes.reduce((a, b) => a > b ? a : b);
//     double lowest = notes.reduce((a, b) => a < b ? a : b);

//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) =>
//             ResultScreen(average: average, highest: highest, lowest: lowest),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueAccent,
//         title: const Text('Ingrese 5 Notas'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             for (var i = 0; i < 5; i++)
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 8.0),
//                 child: TextField(
//                   controller: _controllers[i],
//                   keyboardType: TextInputType.number,
//                   decoration: InputDecoration(
//                     labelText: 'Nota ${i + 1}',
//                     border: const OutlineInputBorder(),
//                     filled: true,
//                     fillColor: Colors.grey[200],
//                   ),
//                 ),
//               ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.lightGreen,
//                 padding: const EdgeInsets.symmetric(
//                     vertical: 16.0, horizontal: 32.0),
//               ),
//               onPressed: _calculateResults,
//               child: const Text('Calcular Promedio'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'result_screen.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  // Controladores para los 5 campos de notas
  final List<TextEditingController> _controllers =
      List.generate(5, (index) => TextEditingController());

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  // Función para calcular los resultados
  void _calculateResults() {
    try {
      // Convertir las notas a números y calcular promedio, mayor y menor
      List<double> notes = _controllers
          .map((controller) => double.parse(controller.text))
          .toList();
      if (notes.any((note) => note > 5 || note < 0)) {
        _showErrorMessage("Las notas deben estar entre 0 y 5");
        return;
      }
      double average = notes.reduce((a, b) => a + b) / notes.length;
      double highest = notes.reduce((a, b) => a > b ? a : b);
      double lowest = notes.reduce((a, b) => a < b ? a : b);

      // Navegar a la pantalla de resultados
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              ResultScreen(average: average, highest: highest, lowest: lowest),
        ),
      );
    } catch (e) {
      _showErrorMessage("Ingrese todas las notas correctamente.");
    }
  }

  // Mostrar mensaje de error
  void _showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  // Función para limpiar los campos de notas
  void _clearFields() {
    for (var controller in _controllers) {
      controller.clear(); // Limpiar cada campo de texto
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ingrese 5 Notas'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Campos para ingresar las notas
            for (var i = 0; i < 5; i++)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextField(
                  controller: _controllers[i],
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Nota ${i + 1}',
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),
            const SizedBox(height: 20),
            // Botón para calcular el promedio
            ElevatedButton(
              onPressed: _calculateResults,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
              ),
              child: const Text('Calcular Promedio'),
            ),
            const SizedBox(height: 10),
            // Botón para limpiar los campos
            ElevatedButton(
              onPressed:
                  _clearFields, // Llama a la función para limpiar los campos
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
              ),
              child: const Text('Limpiar Notas'),
            ),
          ],
        ),
      ),
    );
  }
}
