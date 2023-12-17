import 'package:flutter/material.dart';
import 'package:fruits_app/Orders/Banana.dart';

class Interfce extends StatelessWidget {
  const Interfce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[10],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 45),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 70),
                            child: Text(
                              "Hi Abdi!",
                              style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Text(
                            "What would u like to buy",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 30),
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50),
                            // image: DecorationImage(image: AssetImage("assetName"))
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 55,
                    width: 365,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
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
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 215),
                    child: Text(
                      "Popular items",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: Container(
                          margin: EdgeInsets.only(left:5),
                          height: 200,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(blurRadius: 0.9, spreadRadius: 0),
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Banana()));
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 105,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage("asset/bana.png"))
                                  ),
                                ),
                                SizedBox(height: 2,),
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 30),
                                        child: Text(
                                          "Banana",
                                          style: TextStyle(
                                            fontSize: 23,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 7),
                                        child: Text("Qiimo jaban ku hel"),
                                      ),
                                      SizedBox(height: 5,),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 7),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 10),
                                              child: Text(
                                                "25\$",
                                                style: TextStyle(
                                                  fontSize: 23,
                                                   color: Color(0xff30cbe5),
                                                   fontWeight: FontWeight.bold
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
                       Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          height: 200,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(blurRadius: 0.9, spreadRadius: 0),
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                                Container(
                                  height: 105,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage("asset/apple.png"))
                                  ),
                                ),
                                SizedBox(height: 2,),
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 50),
                                        child: Text(
                                          "Apple",
                                          style: TextStyle(
                                            fontSize: 23,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 7),
                                        child: Text("Qiimo jaban ku hel"),
                                      ),
                                      SizedBox(height: 5,),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 7),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 10),
                                              child: Text(
                                                "20\$",
                                                style: TextStyle(
                                                  fontSize: 23,
                                                   color: Color(0xff30cbe5),
                                                   fontWeight: FontWeight.bold
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
                    ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: Container(
                          margin: EdgeInsets.only(left:5),
                          height: 200,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(blurRadius: 0.9, spreadRadius: 0),
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                                Container(
                                  height: 105,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage("asset/mngo.png"))
                                  ),
                                ),
                                SizedBox(height: 2,),
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 35),
                                        child: Text(
                                          "Mango",
                                          style: TextStyle(
                                            fontSize: 23,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 7),
                                        child: Text("Qiimo jaban ku hel"),
                                      ),
                                      SizedBox(height: 5,),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 7),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 10),
                                              child: Text(
                                                "27\$",
                                                style: TextStyle(
                                                  fontSize: 23,
                                                   color: Color(0xff30cbe5),
                                                   fontWeight: FontWeight.bold
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
                       Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          height: 200,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(blurRadius: 0.9, spreadRadius: 0),
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                                Container(
                                  height: 105,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage("asset/orn.png"))
                                  ),
                                ),
                                SizedBox(height: 2,),
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 40),
                                        child: Text(
                                          "Orange",
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 7),
                                        child: Text("Qiimo jaban ku hel"),
                                      ),
                                      SizedBox(height: 5,),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 7),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 10),
                                              child: Text(
                                                "18\$",
                                                style: TextStyle(
                                                  fontSize: 23,
                                                   color: Color(0xff30cbe5),
                                                   fontWeight: FontWeight.bold
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
                    ],
                  )
                  // SizedBox(
                  //   height: 10,
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
