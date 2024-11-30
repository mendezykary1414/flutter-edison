import 'package:flutter/material.dart';
import 'package:si_no_app/dominio/entidades/mensajes.dart';

class MiMensajeBurbuja extends StatelessWidget {
  final Mensaje mensaje;

  const MiMensajeBurbuja({super.key, required this.mensaje});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme; // Toma los colores del tema
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary, // Color definido en el tema
            borderRadius: BorderRadius.circular(20), // Bordes redondeados
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              mensaje.text, 
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}