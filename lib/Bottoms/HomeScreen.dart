import 'package:flutter/material.dart';
import 'package:fruits_app/Bottoms/CartScreen.dart';
// import 'package:fruits_app/Bottoms/CartScreen.dart';
import 'package:fruits_app/Orders/Apple.dart';
import 'package:fruits_app/Orders/Banana.dart';
import 'package:fruits_app/Orders/Mango.dart';
import 'package:fruits_app/Orders/Orange.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> items = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final String apiUrl = 'https://fruitsapii.vercel.app/items';

    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final List<dynamic> responseData = json.decode(response.body);
        setState(() {
          items = List<Map<String, dynamic>>.from(responseData);
        });
      } else {
        print('Failed to load data');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff30cbe5),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 55,
              width: 365,
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: TextField(
                textAlign: TextAlign.start,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search what would u like to buy',
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 180,
              width: 365,
              decoration: BoxDecoration(
                color: Color(0xff30cbe5),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("asset/on-01.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Text(
                    "Popular items",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FruitCartScreen()));
                  },
                  child: Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Build rows with two cards each
            for (int i = 0; i < items.length; i += 2)
              Row(
                children: [
                  _buildItemCard(items[i]),
                  SizedBox(width: 10),
                  if (i + 1 < items.length) _buildItemCard(items[i + 1]),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemCard(Map<String, dynamic> item) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Container(
          height: 220,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 0.9, spreadRadius: 0),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Banana()));
            },
            child: Column(
              children: [
                Container(
                  height: 105,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10),
                      image:
                          DecorationImage(image: AssetImage("asset/bana.png"))),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Text(
                          item['itemname'] ?? '',
                          style: TextStyle(
                            fontSize: 23,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(item['description'] ?? ''),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 7),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                "\$${item['saleprice'] ?? 0}",
                                style: TextStyle(
                                  fontSize: 23,
                                  color: Color(0xff30cbe5),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(Icons.add_shopping_cart),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}
