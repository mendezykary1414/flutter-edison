import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:si_no_app/presentacion/providers/chat_providers.dart'; // Asegúrate de importar 'provider' si estás usando el paquete de provider
import 'package:si_no_app/presentacion/widgets/chat/mi_mensaje_burbuja.dart';
import 'package:si_no_app/presentacion/widgets/chat/su_mensaje_burbuja.dart';
import 'package:si_no_app/presentacion/widgets/compartido/caja_de_texto.dart';
import 'package:si_no_app/dominio/entidades/mensajes.dart';

class ChatPantalla extends StatelessWidget {
  const ChatPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          // El leading es un espacio que se tiene antes del título
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvwnvX0BZvoTcGfqFG_OjP_dXpddX70KQGp3JuAhr-Vh6l'),
          ), // CircleAvatar
        ),
        title: const Text('Emilia'),
        centerTitle: false,
      ), // AppBar
      body: _ChatView(),
    ); // Scaffold
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProviders = context.watch<
        ChatProviders>(); // Asegúrate de que ChatProviders esté bien definido y registrado

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatProviders.mensajelista.length,
                itemBuilder: (context, index) {
                  final mensaje = chatProviders.mensajelista[index];
                  return (mensaje.deQuien == DeQuien.ella)
                      ? const SuMensajeBurbuja()
                      : MiMensajeBurbuja(mensaje: mensaje);
                },
              ),
            ), // Expanded
            // Caja de Texto
            CajadeTexto(
              onValue: chatProviders.sendMessage,
            ), // CajadeTexto
          ], // Column children
        ), // Column
      ), // Padding
    ); // SafeArea
  }
}
