import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';
import 'package:checkmark/checkmark.dart';
import 'package:openvpn_flutter_example/maps.dart';
import 'package:google_place_picker/google_place_picker.dart';

class Formre extends StatefulWidget {
  @override
  _FormreState createState() => _FormreState();
}

class _FormreState extends State<Formre> {
  bool loading = false;

  final _formkey = GlobalKey<FormState>();
  final _tc1 = TextEditingController();
  final _tc2 = TextEditingController();
  final _tc3 = TextEditingController();
  final _tc4 = TextEditingController();
  final _tc5 = TextEditingController();
  final _tc6 = TextEditingController();
  String address = '';
  String city = '';
  String latitude = '';
  String longitude = '';
  int j = 10;
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'PREKSHA ',
          style: TextStyle(
              color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: 500,
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Form(
                key: _formkey,
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        ' NOTE: If you witness an event that may lead to immediate threat to human health or safety, you should report it to your local police or law enforcement authority.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Container(
                        width: 400,
                        child: Text(
                          "Date and Time Witnessed",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      DateTimeField(
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(254, 137, 58, 1),
                                    width: 5,
                                  )),
                              contentPadding: EdgeInsets.fromLTRB(15, 5, 5, 5),
                              filled: true,
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(115, 141, 208, 1),
                                    width: 2,
                                  ))),
                          selectedDate: selectedDate,
                          onDateSelected: (DateTime value) {
                            setState(() {
                              selectedDate = value;
                            });
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GooglePlacePicker(
                                apiKey:
                                    'AIzaSyDwgTk7Yzp3oGKiQQiJgTTWK0D_t0IfKnU',
                                getAddress: (completeAddress) {
                                  setState(() {
                                    address = completeAddress.completeAddress
                                        .toString();
                                    city = completeAddress.city.toString();
                                    latitude = completeAddress
                                        .position!.latitude
                                        .toString();
                                    longitude = completeAddress
                                        .position!.longitude
                                        .toString();
                                  });
                                },
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: 40,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 49, 85, 179),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            'Choose place',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 500,
                        child: Center(
                          child: Text(
                            address,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 400,
                        child: Text(
                          'Do you have any info regard suspect',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: _tc1,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(254, 137, 58, 1),
                                  width: 5,
                                )),
                            contentPadding: EdgeInsets.fromLTRB(15, 5, 5, 5),
                            filled: true,
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(115, 141, 208, 1),
                                  width: 2,
                                ))),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        onChanged: (val) {
                          setState(() {
                            print(_tc1);
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 400,
                        child: Text(
                          'is there any vehicle involved',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: _tc2,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(254, 137, 58, 1),
                                  width: 5,
                                )),
                            contentPadding: EdgeInsets.fromLTRB(15, 5, 5, 5),
                            filled: true,
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(115, 141, 208, 1),
                                  width: 2,
                                ))),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        onChanged: (val) {
                          setState(() {
                            print(_tc1);
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 400,
                        child: Text(
                          'Information about the drug used',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: _tc3,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(254, 137, 58, 1),
                                  width: 5,
                                )),
                            contentPadding: EdgeInsets.fromLTRB(15, 5, 5, 5),
                            filled: true,
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(115, 141, 208, 1),
                                  width: 2,
                                ))),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        onChanged: (val) {
                          setState(() {
                            print(_tc1);
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 400,
                        child: Text(
                          'Severity 1-10',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: _tc4,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(254, 137, 58, 1),
                                  width: 5,
                                )),
                            contentPadding: EdgeInsets.fromLTRB(15, 5, 5, 5),
                            filled: true,
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(115, 141, 208, 1),
                                  width: 2,
                                ))),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        onChanged: (val) {
                          setState(() {
                            print(_tc1);
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 400,
                        child: Text(
                          'Description',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: _tc5,
                        maxLines: 7,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(254, 137, 58, 1),
                                  width: 5,
                                )),
                            contentPadding: EdgeInsets.fromLTRB(15, 5, 5, 5),
                            filled: true,
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(115, 141, 208, 1),
                                  width: 2,
                                ))),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        onChanged: (val) {
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () async {
                          j++;
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  backgroundColor: Colors.white,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Text(
                                            "Generated ID for the complaint: $j"),
                                      )),
                                );
                              });
                        },
                        child: Container(
                          height: 40,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 49, 85, 179),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            'Submit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
