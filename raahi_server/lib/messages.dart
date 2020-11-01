import 'dart:math';

import 'package:polyline/polyline.dart';
import 'package:raahi_server/app_state.dart';
import 'package:raahi_server/models.dart';
import 'package:raahi_server/service_locator.dart';
import 'package:sms_maintained/sms.dart';

void onMessageReceived(SmsMessage message) {
  String messageCode = message.body.substring(0, 3);
  print('message: ${message.body}');
  switch (messageCode) {
    case 'R0@':
      // For Initial Query Statement: R0@queryString;latitude;longitude
      // Will return Suggested Locations String: S0@placeName;placeCity;placeName;placeCity;placeName;placeCity
      // limited to three suggestions
      processR0String(message);
      break;
    case 'R1@':
      // Once the user has seen the suggestions, the must select a location by specifying index
      // Set a Destination. Input String:  R1@index;lat;lon
      // between 0<=index<3

      // Since the user has selected now he gets 2 outputs
      // 1. 3 steps on the path
      // String: S1@instruction;instructionType;distance;instruction;instructionType;distance;instruction;instructionType;distance;
      // limited to 3 instructions in one time. instruction Type is a value for showing arrow
      // 2. Point polyline String limited to 30 points, skipping alternate points; 5 decimal spaces
      // Output String : S2@string
      processR1String(message);
      break;
    case 'R2@':
      // Get Further Path. We call the api again with a new lat long but old destination location
      // So that we may Stay on Path better?
      // Input String R2@latitude;longitude
      // Output would be S1 and S2 again
      processR2String(message);
      break;
    default:
    //ignore message

  }
}

void processR0String(SmsMessage message) async {
  String str = message.body.substring(3);
  List<String> parts = str.split(';');
  if (parts.length == 3) {
    List<GeoCodeFeature> response = await locator<AppState>()
        .query(message.address, parts[0], parts[1], parts[2])
        .catchError((e) {
      print('Error: $e');
    });
    String responseString = 'S0@';
    response?.sublist(0, min(3, response.length))?.forEach((element) {
      responseString +=
          '${element.properties.name};${element.properties.county};';
    });
    if(responseString.endsWith(';')){
      responseString = responseString.substring(0, responseString.length-1);
    }
    if (responseString == 'S0@') responseString = 'ERROR';
    locator<SmsSender>().sendSms(SmsMessage(message.address, responseString));
  }
  //else ignore?
}

void processR1String(SmsMessage message) async {
  String str = message.body.substring(3);
  try {
    List<String> parts = str.split(';');
    if (parts.length == 3) {
      int index = int.parse(parts[0]);
      if (index >= 0 && index < 3) {
        locator<AppState>().setDestination(message.address, index);
        await sendPath(message, parts[1], parts[2]);
      }
    }
  } catch (e) {}
  //else ignore?
}

void processR2String(SmsMessage message) async {
  String str = message.body.substring(3);
  try {
    List<String> parts = str.split(';');
    if (parts.length == 2) {
      await sendPath(message, parts[0], parts[1]);
    }
  } catch (e) {}
  //else ignore?
}

Future sendPath(SmsMessage message, String lat, String lon) async {
  try {
    List<Steps> steps = await locator<AppState>()
        .getpath(message.address, lat, lon)
        .catchError((e) {
      print('Error message: ${e.toString()}');
    });
    String pathString = 'S1@';
    steps?.sublist(0, min(3, steps.length))?.forEach((element) {
      pathString +=
          '${element.instruction};${element.type};${element.distance};';
    });
    if(pathString.endsWith(';')){
      pathString = pathString.substring(0, pathString.length-1);
    }
    if (pathString == 'S0@') throw Exception();
    print('666->pathString');
    await locator<SmsSender>().sendSms(SmsMessage(message.address, pathString));
    List<List<double>> points =
        locator<AppState>().getPathPoints(message.address);
    points = points.sublist(0, min(60, points.length));
    List<List<double>> pointsSkipAlt = List();
    for (int i = 0; i < points.length; i++) {
      if (i % 2 == 0) pointsSkipAlt.add(points[i]);
    }

    final poly = Polyline.Encode(decodedCoords: pointsSkipAlt, precision: 5);
    print('---.>>>> ${poly.encodedString}');
    
    
    // await locator<SmsSender>()
    //     .sendSms(SmsMessage(message.address, poly.encodedString));
        
  } catch (e) {}
}
