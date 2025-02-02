import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:si_no_app/presentacion/pantallas/chat/chat_pantalla.dart';
import 'package:si_no_app/presentacion/providers/chat_providers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProviders()),
      ],
      child: MaterialApp(
        title: 'Yes No App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ChatPantalla(),
      ),
    );
  }
}
