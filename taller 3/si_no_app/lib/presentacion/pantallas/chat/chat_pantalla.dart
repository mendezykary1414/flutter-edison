import 'package:flutter/material.dart';
import 'package:si_no_app/presentacion/widgets/chat/mi_mensaje_burbuja.dart';
import 'package:si_no_app/presentacion/widgets/chat/su_mensaje_burbuja.dart';
import 'package:si_no_app/presentacion/widgets/compartido/caja_de_texto.dart';

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
      body: ChatView(),
    ); // Scaffold
  }
}

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Número de mensajes a mostrar
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? MiMensajeBurbuja() // Mensaje propio
                    : SuMensajeBurbuja(); // Mensaje de la otra persona
              },
            ), // ListView.builder
          ), // Expanded

          // Caja de Texto
          const CajaDeTexto(),
        ], // Column
      ), // Column
    ); // Padding
  }
}
