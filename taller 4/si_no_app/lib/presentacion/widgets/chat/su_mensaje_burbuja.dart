import 'package:flutter/material.dart';

class SuMensajeBurbuja extends StatelessWidget {
  const SuMensajeBurbuja({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context)
        .colorScheme; // Toma los colores para las burbujas del tema

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary, // Toma el color definido en el tema
            borderRadius:
                BorderRadius.circular(20), // Borde redondo en los chats
          ), // BoxDecoration
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Mensaje Respondido',
              style: TextStyle(color: Colors.white),
            ),
          ), // Padding
        ), // Container
        const SizedBox(height: 5),
        _ImagenBurbuja(),
        const SizedBox(height: 10),
      ], // Column children
    );
  }
}

class _ImagenBurbuja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context)
        .size; // El MediaQuery da información del tamaño del dispositivo que lo está ejecutando

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/yes/5-64c2884cc48057b94fd0b3eaf323d92c.gif',
        width: size.width * 0.7, // Se deja el 70% de ancho para la imagen
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child; // Si ya cargó, regresa la imagen
          } else {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: const Text(
                  'Esta enviando una imagen'), // Mensaje mientras carga la imagen
            );
          }
        },
      ),
    );
  }
}

