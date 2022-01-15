import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /*appBar: AppBar(
          toolbarHeight: 30,
          backgroundColor: Colors.blue[800],

        ),*/
        body: Container(
          width: double.infinity,
          color: Colors.blue[800],
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 200,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(children: <Widget>[
                    Container(
                        child: Padding(
                          padding:EdgeInsets.fromLTRB(10, 20, 20, 10),
                          child: Row(
                              children:<Widget>[
                                Expanded(
                                  child: IconButton(
                                    icon: Icon(Icons.arrow_back_sharp),
                                    iconSize: 30,
                                    color: Colors.white,
                                    onPressed: () {},
                                    alignment: Alignment(-1.0, 0.0),
                                  ),
                                ),
                               /* Padding(
                                  padding: EdgeInsets.fromLTRB(0.0, 20, 0, 10),
                                  child: Text(
                                    'S',
                                    style: TextStyle(color: Colors.white, fontSize: 10),
                                    textScaleFactor: 2.0,
                                    textAlign: TextAlign.left,
                                  ),
                                ),*/

                              ]),
                        )),
                    Text(
                      'SIRO',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textScaleFactor: 1.5,
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ),
              ),
              //  header(),
              Expanded(
               // child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(60),
                          topLeft: Radius.circular(60),
                        )),

                    //  child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 90,
                              child: Text(
                                "Forget Password",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.blueAccent[400],
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            TextFormField(
                              scrollPadding: EdgeInsets.all(10),
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                errorStyle: TextStyle(
                                    color: Colors.deepOrange, fontSize: 15.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            TextFormField(
                              scrollPadding: EdgeInsets.all(10),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Mobile',
                                errorStyle: TextStyle(
                                    color: Colors.deepOrange, fontSize: 15.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            /*TextFormField(
                              scrollPadding: EdgeInsets.all(10),
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                errorStyle: TextStyle(
                                    color: Colors.deepOrange, fontSize: 15.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            TextFormField(
                              scrollPadding: EdgeInsets.all(10),
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: 'Confirm Password',
                                errorStyle: TextStyle(
                                    color: Colors.deepOrange, fontSize: 15.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            /*TextFormField(
                                scrollPadding: EdgeInsets.all(10),
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  hintText: 'abc@gmail.com',
                                  errorStyle: TextStyle(
                                      color: Colors.deepOrange, fontSize: 15.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                              SizedBox(height: 40,),*/
                            TextFormField(
                              //validator: (String value),
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please enter principle';
                                }
                              },
                              scrollPadding: EdgeInsets.all(10),
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                labelText: 'MOBILE',
                                errorStyle: TextStyle(
                                    color: Colors.deepOrange, fontSize: 15.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),*/
                            // Text('Forget Password?', textAlign: TextAlign.right,),
                            //SizedBox(height: 30,),
                            Container(
                              width: 200,
                              height: 50,
                              child: RaisedButton(
                                  color: Theme.of(context).primaryColorDark,
                                  elevation: 6.0,
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                        color: Colors.white,
                                        /*fontWeight: FontWeight.bold,*/
                                        fontSize: 15),
                                    textScaleFactor: 1.5,
                                  ),
                                  onPressed: () {}),
                            ),
                          ],
                        )),
                    //),
                  ),
                //),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
