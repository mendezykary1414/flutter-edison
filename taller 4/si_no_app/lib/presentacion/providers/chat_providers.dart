import 'package:flutter/material.dart';

import 'package:si_no_app/dominio/entidades/mensajes.dart';

class ChatProviders extends ChangeNotifier{//Para notificar cuando hay cambios
List<Mensaje> mensajelista = [
Mensaje (text: 'Hola Mundo', deQuien:DeQuien.mio),
Mensaje (text: 'Donde estas?', deQuien:DeQuien.mio ),
Mensaje (text: 'En la casa ?', deQuien:DeQuien.ella ),
];
Future<void> sendMessage (String text) async{

final newMensaje = Mensaje (text: text, deQuien: DeQuien.mio);
mensajelista.add(newMensaje);
notifyListeners();
}
}