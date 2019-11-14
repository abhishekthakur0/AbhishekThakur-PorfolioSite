import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
      title: 'Abhishek Thakur',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.0),
        child: AppBar(
          backgroundColor: Colors.black,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 5, right: 400, bottom: 5),
              child: FlatButton.icon(
                icon: Icon(Icons.call, size: 15, color: Colors.white),
                label: Text(
                  "+919591695993",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 400, top: 5, bottom: 5),
              child: FlatButton.icon(
                icon: Icon(Icons.email, size: 15, color: Colors.white),
                label: Text(
                  "thakur_abhishek@aol.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 0, top: 5, bottom: 5),
              child: FlatButton.icon(
                icon: Icon(Icons.business, size: 15, color: Colors.white),
                label: Text(
                  "For Bussiness\t",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child:Container(
          height: screenSize.height,
          width: screenSize.width,
          child: Column(
            children: <Widget>[
              Container(
                width: screenSize.width,
                color: Colors.blueGrey,
                child: Text("Abhishek",style: TextStyle(fontSize: 200),),
              )
            ],
          ),
        )
      ),
    );
  }
}
