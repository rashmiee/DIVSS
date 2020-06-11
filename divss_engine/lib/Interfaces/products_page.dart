import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'welcome_screen.dart';

class ProductsPage extends StatefulWidget {
  final String ipAddress;

  ProductsPage({this.ipAddress});

  @override
  ProductsPageState createState() => new ProductsPageState();
}

class ProductsPageState extends State<ProductsPage> {
  List data;

  Future<String> getData() async {
    var response = await http.get(sendIpAddress() + "/getAllItems_mobile");

    this.setState(() {
      data = json.decode(response.body);
    });
    print(data[0]["title"]);
    return "Success!";
  }

  @override
  void initState() {
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("DIVSS"),
        centerTitle: true,
      ),
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            margin: EdgeInsets.only(bottom: 10, left: 3, right: 3, top: 3),
            color: Color(0xFF323941),
            borderOnForeground: false,
            child: Container(
              width: 800,
              alignment: Alignment.center,
              margin: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    data[index]["ITEM_DESC"],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "Item Code: " + data[index]["ITEM_CODE"],
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Country: " + data[index]["COUNTRY"],
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "Manufacturer: " + data[index]["MANUFACTURER"],
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Price(LKR): " + data[index]["PRIZE"].toString(),
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
