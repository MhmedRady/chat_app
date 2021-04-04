import 'package:chat_app/Const.dart';
import 'package:flutter/material.dart';

enum ChatMessageType {text,audio,image,video}
enum MessageStatus {not_sent, not_view, viewed}

class ChatMessage{
  final String text;
  final ChatMessageType messageType;
  final MessageStatus messageStatus;
  final bool isSender;

  ChatMessage({this.text,
    @required this.messageType,
    @required this.messageStatus,
    @required this.isSender
  });
}

List demoChatMessages = [
  ChatMessage(text: 'Hi M7MED \n how do you do ?! \n i want to see your all apps !',messageType: ChatMessageType.text, messageStatus: MessageStatus.viewed, isSender: false),
  ChatMessage(text: "hi Sara I'm Fine, how can i help",messageType: ChatMessageType.text, messageStatus: MessageStatus.viewed, isSender: true),
  ChatMessage(messageType: ChatMessageType.audio, messageStatus: MessageStatus.viewed, isSender: false),
  ChatMessage(text: "Ok This is my GetHub account : 'github.com/MhmedRady'. See my all apps !!",messageType: ChatMessageType.text, messageStatus: MessageStatus.viewed, isSender: true),
  ChatMessage(messageType: ChatMessageType.video, messageStatus: MessageStatus.not_view, isSender: false),
  ChatMessage(messageType: ChatMessageType.audio, messageStatus: MessageStatus.viewed, isSender: true),
  ChatMessage(text: "Note: The size limit of attachments is determined by your service provider. For devices or services that don’t support Live Photos, a Live Photo is shared as a still photo.",
              messageType: ChatMessageType.text, messageStatus: MessageStatus.not_sent, isSender: false),
  ChatMessage(messageType: ChatMessageType.image, messageStatus: MessageStatus.not_sent, isSender: true),
  ChatMessage(text: "Note: The size limit of attachments is determined by your service provider. For devices or services that don’t support Live Photos, a Live Photo is shared as a still photo.",
              messageType: ChatMessageType.text, messageStatus: MessageStatus.not_sent, isSender: true),
];