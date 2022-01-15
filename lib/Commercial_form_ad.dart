import 'package:flutter/material.dart';

class Commercial extends StatefulWidget {
  @override
  _CommercialState createState() => _CommercialState();
}

class _CommercialState extends State<Commercial> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //  canvasColor: Colors.blue[900],
        textSelectionColor: Colors.white,
        textTheme: TextTheme(),
      ),
      home: PropAd(),
    );
  }
}
class PropAd extends StatefulWidget {
  @override
  _PropAdState createState() => _PropAdState();
}

class _PropAdState extends State<PropAd> {
  var _select = ['Select City', '', 'ni', 'ki'];
  var _select2 = ['Select State', 'ai', 'bi', 'ci'];
  var currentItemSelected = 'Select City';
  var currentItemSelected2 = 'Select State';
  final RegExp phoneReg = new RegExp(r"^[0-9]{10}$");
  List<Object> images = List<Object>();
  //Future<File> _imageFile;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      images.add("Add Image");
      images.add("Add Image");
      images.add("Add Image");
      images.add("Add Image");
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue[600]),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Container(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'Location ',
                  style: TextStyle(
                      color: Colors.blue[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: 'Recursive',
                      shadows: [Shadow(offset: Offset(0, 10), blurRadius: 25)]),
                  textAlign: TextAlign.center,
                  textScaleFactor: 1.5,
                ),
              ),
              Form(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Column(
                    children: [
                      // Padding(
                      //  padding: const EdgeInsets.all(15.0),
                      //child:
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: TextFormField(
                          keyboardType: TextInputType.streetAddress,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            labelText: 'Property No./Shop No./Apartment No. (Optional)',
                            errorStyle: TextStyle(
                                color: Colors.deepOrange, fontSize: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: TextFormField(
                          keyboardType: TextInputType.streetAddress,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            labelText: 'Apartment/Society',
                            errorStyle: TextStyle(
                                color: Colors.deepOrange, fontSize: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Fill Above Field';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: TextFormField(
                          keyboardType: TextInputType.streetAddress,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            labelText: 'Locality',
                            errorStyle: TextStyle(
                                color: Colors.deepOrange, fontSize: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Fill Above Field';
                            }
                            return null;
                          },
                        ),
                      ),

                      // ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: DropdownButton(
                            items: _select.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            onChanged: (String currentItem) {
                              setState(() {
                                this.currentItemSelected = currentItem;
                              });
                            },
                            value: currentItemSelected,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: DropdownButton(
                            items: _select2.map((String dropDownStringItem2) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem2,
                                child: Text(dropDownStringItem2),
                              );
                            }).toList(),
                            onChanged: (String currentItem2) {
                              setState(() {
                                this.currentItemSelected2 = currentItem2;
                              });
                            },
                            value: currentItemSelected2,
                          ),
                        ),
                      ),
                      Container(height: 50,),
                      /* Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            fillColor: Colors.lightBlueAccent,
                            labelText: 'Mobile',
                            errorStyle: TextStyle(
                                color: Colors.deepOrange, fontSize: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          validator: (value) {
                            if (!phoneReg.hasMatch(value)) {
                              return 'Fill Above Field';
                            }
                            return null;
                          },
                        ),
                      ),*/
                      Container(
                          alignment: Alignment.centerRight,
                          //width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RaisedButton(
                              elevation: 8,
                              onPressed: () {

                              },
                              color: Colors.blue[800],
                              child: Text(
                                'Next',
                                style: TextStyle(
                                    fontFamily: 'Recursive',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

