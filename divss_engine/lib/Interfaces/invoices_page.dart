import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'welcome_screen.dart';

class Invoices extends StatefulWidget {
  @override
  InvoicesState createState() => new InvoicesState();
}

class InvoicesState extends State<Invoices> {
  List data;

  Future<String> getData() async {
    var response = await http.get(sendIpAddress() +
        "/GelAllInvDetail_DetailsByInvNo_mobile?InvNo=cust001&CompId=CP001");
    this.setState(() {
      data = json.decode(response.body);
    });
    print(data[0]);
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
            margin: EdgeInsets.only(bottom: 10, left: 3, right: 3),
            color: Color(0xFF323941),
            child: Container(
              width: 800,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Invoice No:  " + data[index]["INV_NO"],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Items for maintainance: " +
                        data[index]["ITEMS_FOR_MAINTAINANCE"],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Product Description: " + data[index]["ITEM_DESC"],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Quantity: " + data[index]["QTY"].toString(),
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Company ID: " + data[index]["COMPANY_CODE"],
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Products Subtotal: " + data[index]["PRICE"].toString(),
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Service Price: " + data[index]["SERVICE_PRICE"].toString(),
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Subtotal: " + data[index]["SUB_TOT"],
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
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
