import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Royal Enfield",
    home: Royal(),
  ));
}

class Royal extends StatelessWidget {
  _launchURL() async {
    const url = "https://www.royalenfield.com/in/en/our-world/since-1901/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
          child: ListView(
            children: <Widget>[
              Container(
                child: Image.asset("images/royal logo.png"),
              ),
              ListTile(
                leading: Icon(
                  Icons.motorcycle,
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  "MOTERCYCLES",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.filter_hdr,
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  "RIDES ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  "ACCESSORIES",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.beach_access,
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  "APPAREL",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: <Widget>[Image.asset("images/logo royal.jpg")],
        title: Text(
          "ROYAL ENFIELD",
          style:
              TextStyle(color: Colors.red, fontSize: 20, fontFamily: "Volkhov"),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "WELCOME TO",
                  style:
                      TextStyle(color: Colors.white, fontSize: 38, height: 2),
                ),
                Text(
                  "ROYAL ENFIELD",
                  style: TextStyle(
                      fontFamily: "Volkhov",
                      fontSize: 40,
                      color: Colors.red,
                      height: 2),
                ),
              ],
            ),
            ExpansionTile(
              backgroundColor: Colors.black,
              title: Text(
                "ABOUT US",
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
              children: <Widget>[
                Text(
                    "Royal Enfield is an Indian motorcycle manufacturing brand with the tag of (the oldest global motorcycle brand in continuous production) manufactured in factories in Chennai in India. Licensed from Royal Enfield by the indigenous Indian Madras Motors, it is now a subsidiary of Eicher Motors Limited, an Indian automaker. The company makes the Royal Enfield Bullet, and other single-cylinder and twin-cylinder motorcycles. First produced in 1901, Royal Enfield is the oldest motorcycle brand in the world still in production, with the Bullet model enjoying the longest motorcycle production run of all time",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontFamily: "Volkhov")),
                RaisedButton(
                  color: Colors.black,
                  child: Text(
                    "For more details click here",
                    style: TextStyle(color: Colors.red),
                  ),
                  onPressed: () {
                    _launchURL();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
