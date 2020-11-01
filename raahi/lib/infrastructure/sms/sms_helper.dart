import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:sms_maintained/sms.dart';

import '../../domain/core/value_objects.dart';
import '../../domain/search/query_result_object.dart';

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
  List<QueryResultObject> places = [];

  void receivedMessage() {
    receivedMsgStream = receivedMsg.stream;
    receiver.onSmsReceived.listen((event) {
      String msg = event.body.substring(0, 3);
      String instruction = event.body.substring(3);
      List<String> data = instruction.split(';');
      int len = data.length;
      switch (msg) {
        case 'S0':
          //This means a list of probable places
          //S0@placeName;placeCity;placeName;placeCity;placeName;placeCity
          for (int i = 0; i < len; i = i + 2) {
            places.add(QueryResultObject(
                name: LocationName(data[i]), cityName: data[i + 1]));
          }
          break;
        case 'S1':

        default:
      }

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
