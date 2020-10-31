import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:raahi_server/api_service.dart';
import 'package:raahi_server/key.dart';
import 'package:raahi_server/models.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => ApiService.create(),
      dispose: (_, service) => service.client.dispose(),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: RaisedButton(
              onPressed: () async {
                ApiService service =
                    Provider.of<ApiService>(context, listen: false);
                Response<DirectionsResponse> response = await service.getDirections(
                    key, '8.681495,49.41461', '8.687872,49.420318');
                print(response.body.features.first.properties.segments);
              },
              child: Text('Press me to print to debug'))),
    );
  }
}
