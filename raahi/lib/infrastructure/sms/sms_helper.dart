import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:sms_maintained/sms.dart';

@LazySingleton()
class SmsHelper {
  final SmsSender sender = SmsSender();
  final String address = '+919826092380';
  final SmsReceiver receiver = SmsReceiver();
  String mssg = 'Message not received to me yet';

  final StreamController<bool> isSmsDelivered =
      StreamController<bool>.broadcast();
  Stream<bool> isSmsDeliveredStream;

  final StreamController<String> receivedMsg =
      StreamController<String>.broadcast();
  Stream<String> receivedMsgStream;

  void receivedMessage() {
    receivedMsgStream = receivedMsg.stream;
    receiver.onSmsReceived.listen((event) {
      receivedMsg.sink.add(event.body);
      debugPrint("Sms Received from ${event.address} : ${event.body}");
      mssg = event.body;
    }, onError: (e) {
      debugPrint('$e');
    });
  }

  void sendSms(String mssg) {
    sender.sendSms(SmsMessage(
      address,
      mssg,
    ));
  }

  void isMssgDelivered() {
    isSmsDeliveredStream = isSmsDelivered.stream;
    sender.onSmsDelivered.listen((event) {
      debugPrint(event.toString());
      isSmsDelivered.sink.add(true);
    }, onError: (e) {
      isSmsDelivered.sink.add(false);
      debugPrint('Message not sent $e');
    });
  }
}
