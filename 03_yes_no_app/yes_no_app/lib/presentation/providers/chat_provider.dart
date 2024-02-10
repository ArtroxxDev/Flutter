import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/messages.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Hola amor!', fromWho: FromWho.me),
    Message(text: 'Has entrenado hoy Eris?', fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
    //TODO: IMPLEMENTAR ENVIO DE MENSAJE
  }
}
