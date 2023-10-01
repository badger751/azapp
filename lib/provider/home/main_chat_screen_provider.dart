import 'package:flutter/material.dart';

class MainChatScreenProvider extends ChangeNotifier {
  final List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Adam", messageType: "received", time: '2:30 pm'),
    ChatMessage(messageContent: "How have you been?", messageType: "received", time: '2:30 pm'),
    ChatMessage(messageContent: "Hey Vin, I am doing fine dude. How bout you ?", messageType: "sent", time: '2:30 pm'),
    ChatMessage(messageContent: "Great to hear that ! I am doing good too", messageType: "received", time: '2:30 pm'),
    ChatMessage(messageContent: "Let's have a meetup soon !", messageType: "sent", time: '2:30 pm'),
    ChatMessage(messageContent: "yeah !", messageType: "received", time: '2:30 pm'),
    ChatMessage(messageContent: "yeah !", messageType: "received", time: '2:30 pm'),
    ChatMessage(messageContent: "when?", messageType: "sent", time: '2:30 pm'),
  ];

  TextEditingController messageController = TextEditingController();

  void addMessages() {
    print(messageController.text);
    messages.add(ChatMessage(messageContent: messageController.text, messageType: 'Sender', time: '6.30 pm'));
    notifyListeners();
  }
}

class ChatMessage {
  String messageContent;
  String messageType;
  String time;
  ChatMessage({
    required this.messageContent,
    required this.messageType,
    required this.time,
  });
}
