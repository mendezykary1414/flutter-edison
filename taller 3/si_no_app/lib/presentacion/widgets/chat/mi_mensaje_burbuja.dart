import 'package:flutter/material.dart';

class MiMensajeBurbuja extends StatelessWidget {
  const MiMensajeBurbuja({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme; // Toma los colores para las burbujas del tema
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary, // Color de fondo de la burbuja de chat
            borderRadius: BorderRadius.circular(20), // Borde redondeado en los chats
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Mensaje de Chat',
              style: TextStyle(color: Colors.white), // Color del texto
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
