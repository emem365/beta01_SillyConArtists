import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:raahi/domain/navigation/instruction_type.dart';
import 'package:raahi/domain/navigation/navigation_instruction.dart';
import 'package:raahi/infrastructure/location/my_location.dart';
import 'package:sms_maintained/sms.dart';

import '../../application/navigation/navigation_bloc.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/search/query_result_object.dart';
import '../../injection.dart';

@LazySingleton()
class SmsHelper {
  final MyLocation _myLocation = getIt<MyLocation>();
  final SmsSender sender = SmsSender();
  final String address = '+917009937626';
  final SmsReceiver receiver = SmsReceiver();
  String mssg = 'Message not received to me yet';

  final StreamController<bool> isSmsDelivered =
      StreamController<bool>.broadcast();
  Stream<bool> isSmsDeliveredStream;

  final StreamController<String> receivedMsg =
      StreamController<String>.broadcast();
  Stream<String> receivedMsgStream;
  List<QueryResultObject> places = [];
  List<NavigationInstruction> instructions = [];

  int nextInstructionIndex = -1;

  void receivedMessage() {
    receivedMsgStream = receivedMsg.stream;
    receiver.onSmsReceived.listen((event) {
      String msg = event.body.substring(0, 3);
      String instruction = event.body.substring(3);
      List<String> data = instruction.split(';');
      int len = data.length;
      switch (msg) {
        case 'S0@':
          //This means a list of probable places
          //S0@placeName;placeCity;placeName;placeCity;placeName;placeCity
          for (int i = 0; i < len; i = i + 2) {
            places.add(QueryResultObject(
                name: LocationName(data[i]), cityName: data[i + 1]));
          }
          break;
        case 'S1@':
          //S1@instruction;instructionType;distance;
          //instruction;instructionType;distance;instruction;instructionType;distance;
          for (int i = 0; i < len; i = i + 3) {
            int type = int.parse(data[i + 1]);
            InstructionType instructionType;
            if (type == 0) {
              instructionType = const InstructionType.left();
            } else if (type == 1) {
              instructionType = const InstructionType.right();
            } else if (type == 2) {
              instructionType = const InstructionType.sharpLeft();
            } else if (type == 3) {
              instructionType = const InstructionType.sharpRight();
            } else if (type == 4) {
              instructionType = const InstructionType.slightLeft();
            } else if (type == 5) {
              instructionType = const InstructionType.slightRight();
            } else if (type == 6) {
              instructionType = const InstructionType.straight();
            } else if (type == 7) {
              instructionType = const InstructionType.enterRoundabout();
            } else if (type == 8) {
              instructionType = const InstructionType.exitRoundabout();
            } else if (type == 9) {
              instructionType = const InstructionType.uTurn();
            } else if (type == 10) {
              instructionType = const InstructionType.goal();
            } else if (type == 11) {
              instructionType = const InstructionType.depart();
            } else if (type == 12) {
              instructionType = const InstructionType.keepLeft();
            } else if (type == 13) {
              instructionType = const InstructionType.keepRight();
            }
            instructions.add(NavigationInstruction(
                instruction: data[i],
                type: instructionType,
                distance: double.parse(data[i + 2])));
          }
          break;

        default:
          debugPrint('Ignore the message');
      }
      receivedMsg.sink.add(event.body);
      debugPrint("Sms Received from ${event.address} : ${event.body}");
      mssg = event.body;
    }, onError: (e) {
      debugPrint('$e');
    });
  }

  Future<NavigationInstruction> getNextInstruction() async {
    nextInstructionIndex += 1;
    if (nextInstructionIndex == instructions.length) {
      //R2@latitude;longitude
      instructions = [
        NavigationInstruction(
            instruction: "Head northwest",
            type: InstructionType.depart(),
            distance: 34.5),
        NavigationInstruction(
            instruction: "Turn Left",
            type: InstructionType.left(),
            distance: 223.8),
        NavigationInstruction(
            instruction: "Turn Left and you've reached",
            type: InstructionType.goal(),
            distance: 5151.8),
      ];
      nextInstructionIndex = 0;
      LocationData loc = await _myLocation.getLocationData();
      sendSms('R2@${loc.latitude};${loc.longitude}');
      receivedMessage();
      return instructions[nextInstructionIndex];
    }
    // for R2 await _mylocation.getLocation()

    return instructions[nextInstructionIndex];
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
