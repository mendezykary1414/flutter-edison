import 'package:flutter/material.dart';

class SuMensajeBurbuja extends StatelessWidget {
  const SuMensajeBurbuja({super.key});

  @override
  Widget build(BuildContext context) {
    final colors =
        Theme.of(context).colorScheme; // Obtener esquema de colores del tema

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary, // Color secundario del tema
            borderRadius: BorderRadius.circular(20), // Borde redondeado
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: const Text(
            'Mensaje recibido',
            style: TextStyle(color: Colors.white),
          ),
        ), // Container
        const SizedBox(height: 5),
      ],
    ); // Column
  }
}
