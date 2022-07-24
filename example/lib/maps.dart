import 'package:flutter/material.dart';
import 'package:google_place_picker/google_place_picker.dart';

class Maps1 extends StatefulWidget {
  const Maps1({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Maps1> createState() => _Maps1State();
}

class _Maps1State extends State<Maps1> {
  String address = '';
  String city = '';
  String latitude = '';
  String longitude = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Address: $address',
            ),
            Text(
              'City: $city',
            ),
            Text(
              'Latitude: $latitude',
            ),
            Text(
              'Longitude: $longitude',
            ),
            FlatButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GooglePlacePicker(
                      apiKey: 'AIzaSyDwgTk7Yzp3oGKiQQiJgTTWK0D_t0IfKnU',
                      getAddress: (completeAddress) {
                        setState(() {
                          address = completeAddress.completeAddress.toString();
                          city = completeAddress.city.toString();
                          latitude =
                              completeAddress.position!.latitude.toString();
                          longitude =
                              completeAddress.position!.longitude.toString();
                        });
                      },
                    ),
                  ),
                );
              },
              child: const Text('Pick a Place on Google Maps'),
            ),
          ],
        ),
      ),
    );
  }
}
