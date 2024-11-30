import 'package:flutter/material.dart';

class CajaDeTexto extends StatelessWidget {
  const CajaDeTexto({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: colors.background),
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration(
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          // Acción al presionar el botón de enviar
          print("Enviar mensaje desde la caja de texto");
        },
      ),
    );

    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Valor enviado: $value');
      },
      onChanged: (value) {
        print('Valor cambiado: $value');
      },
    );
  }
}
