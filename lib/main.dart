import 'package:flutter/material.dart';
import 'package:flutter_maps/maps_host.dart';
import 'package:flutter_maps/choose_device.dart';
import 'package:flutter_maps/coordinates_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ChooseUser()
    );
  }
}

class ChooseUser extends StatelessWidget {
  CoordinatesModel coordinatesModel;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('Google Maps Flutter')),
      body: Builder(
          builder: (context) =>
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: RaisedButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                        child: Text("Share my realtime location"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MapsHost()),
                          );
                        },),
                    ),
                    Padding(padding: const EdgeInsets.all(8.0),
                    ),
                    SizedBox(
                        width: 200,
                        height: 50,
                        child: RaisedButton(
                          color: Colors.blue,
                          textColor: Colors.white,
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                          child: Text("Get realtime location"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ChooseDevice()),
                            );
                          },)
                    )
                  ],
                ),
              ),
      )
    );
  }

}