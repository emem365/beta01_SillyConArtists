import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:raahi_server/api_service.dart';
import 'package:raahi_server/app_state.dart';
import 'package:raahi_server/messages.dart';
import 'package:raahi_server/models.dart';
import 'package:polyline/polyline.dart';
import 'package:raahi_server/service_locator.dart';
import 'package:sms_maintained/sms.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SmsReceiver receiver = SmsReceiver();
  receiver.onSmsReceived.listen(onMessageReceived);
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<AppState>(
      create: (_) => AppState(),
      dispose: (_, appState) => appState.apiService.client.dispose(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Response<DirectionsResponse> response;
  Polyline decodedpoints;
  String startLat;
  String endLat;
  String startLon;
  String endLon;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
          child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              onSaved: (val) => startLat = val,
              decoration: InputDecoration(labelText: 'Start Latitude'),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              onSaved: (val) => startLon = val,
              decoration: InputDecoration(labelText: 'Start Longitude'),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              onSaved: (val) => endLat = val,
              decoration: InputDecoration(labelText: 'End Latitude'),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              onSaved: (val) => endLon = val,
              decoration: InputDecoration(labelText: 'End Longitude'),
            ),
            RaisedButton(
                onPressed: () async {
                  onMessageReceived(SmsMessage(
                    '+917009937626',
                    'R1@0;28.7314161;77.0376372'
                  ));
                  // _formKey.currentState.save();

                  // ApiService service =
                  //     Provider.of<ApiService>(context, listen: false);
                  // response = await service.getDirections(
                  //     '$startLat,$startLon', '$endLat,$endLon');
                  // final points = response
                  //     .body.features.first.geometry.coordinates
                  //     .map((coord) => coord.toList())
                  //     .toList();
                  // final poly =
                  //     Polyline.Encode(decodedCoords: points, precision: 5);
                  // decodedpoints = Polyline.Decode(
                  //     encodedString: poly.encodedString, precision: 5);
                  // print(
                  //     'String: ${poly.encodedString.length} ${points.length}');
                  // setState(() {});
                },
                child: Text('Press me ')),
            SizedBox(height: 25),
            if (decodedpoints != null)
              ...decodedpoints.decodedCoords
                  .map((e) => ListTile(title: Text(e.toString())))
                  .toList(),
            Divider(),
            if (response != null)
              ...response.body.features.first.properties.segments.first.steps
                  .map<ListTile>((Steps step) => ListTile(
                        title: Text(step.instruction),
                      ))
                  .toList(),
          ],
        ),
      )),
    );
  }
}

