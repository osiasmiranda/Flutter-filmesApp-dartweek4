import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin MessagesMixin on GetxController {
  void messagerListener(Rxn<MessagesModel> message) {
    ever<MessagesModel?>(message, (model) {
      if (model != null) {
        Get.snackbar(
          model.title,
          model.message,
          backgroundColor: model.type.color(),
        );
      }
    });
  }
}

class MessagesModel {
  final String title;
  final String message;
  final MessageType type;

  MessagesModel({
    required this.title,
    required this.message,
    required this.type,
  });

  MessagesModel.error({
    required this.title,
    required this.message,
  }) : type = MessageType.error;

  MessagesModel.info({
    required this.title,
    required this.message,
  }) : type = MessageType.info;
}

enum MessageType {
  error,
  info,
}

extension MessageTypeExtension on MessageType {
  Color? color() {
    switch (this) {
      case MessageType.error:
        return Colors.red[600] ?? Colors.red;

      case MessageType.info:
        return Colors.blue[200] ?? Colors.blue;
    }
  }
}
