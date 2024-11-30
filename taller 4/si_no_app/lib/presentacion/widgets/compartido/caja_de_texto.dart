import 'package:flutter/material.dart';


class CajadeTexto extends StatelessWidget {
  final ValueChanged<String> onValue;

  const CajadeTexto({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    ); // UnderlineInputBorder

    final inputDecoration = InputDecoration(
      hintText: "Finaliza su mensaje con un ?", // Si finaliza con ?, dispara el proceso de la respuesta automática
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        // Botón e ícono de enviar el mensaje
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          final textValue = textController.value.text;
          textController.clear(); // Limpia la caja después de enviar el mensaje
          onValue(textValue);
        },
      ),
    ); // InputDecoration

    return TextFormField(
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textController.clear(); // Limpia la caja después de enviar el mensaje
        focusNode.requestFocus();
        onValue(value);
      },
      onChanged: (value) {
        // Puedes agregar aquí una lógica adicional si es necesario
        // ignore: avoid_print
        print('Cambiado: $value');
      },
    );
  }
}
