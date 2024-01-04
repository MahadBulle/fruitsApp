import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class registerscreen extends StatefulWidget {
  const registerscreen({Key? key});

  @override
  State<registerscreen> createState() => _registerscreenState();
}

class _registerscreenState extends State<registerscreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your username';
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 600,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(253, 252, 252, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(
                          flex: 2,
                          child: Center(
                            child: Text(
                              'Sign up here',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 9,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextFormField(
                                  keyboardType: TextInputType.name,
                                  controller: _usernameController,
                                  validator: _validateUsername,
                                  decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                    prefixIcon: const Icon(
                                      Icons.person,
                                      color: Color(0xff30cbe5),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                          color: Color(0xff30cbe5)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                          color: Color(0xff30cbe5)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: _emailController,
                                  validator: _validateEmail,
                                  decoration: InputDecoration(
                                    hintText: 'Enter your Email',
                                    prefixIcon: const Icon(
                                      Icons.email,
                                      color: Color(0xff30cbe5),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                          color: Color(0xff30cbe5)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                          color: Color(0xff30cbe5)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  controller: _passwordController,
                                  validator: _validatePassword,
                                  decoration: InputDecoration(
                                    hintText: 'Enter your Password',
                                    prefixIcon: const Icon(
                                      Icons.lock,
                                      color: Color(0xff30cbe5),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                          color: Color(0xff30cbe5)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                          color: Color(0xff30cbe5)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Center(
                            child: Container(
                              width: double.infinity,
                              height: size.height * 0.08,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff30cbe5),
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                onPressed: () async {
                                  if (_validateUsername(
                                              _usernameController.text) ==
                                          null &&
                                      _validateEmail(_emailController.text) ==
                                          null &&
                                      _validatePassword(
                                              _passwordController.text) ==
                                          null) {
                                    final String apiUrl =
                                        'https://fruitsapii.vercel.app/users/signup';

                                    final Map<String, String> data = {
                                      'username': _usernameController.text,
                                      'email': _emailController.text,
                                      'password': _passwordController.text,
                                    };

                                    final response = await http.post(
                                      Uri.parse(apiUrl),
                                      body: json.encode(data),
                                      headers: {
                                        'Content-Type': 'application/json',
                                      },
                                    );

                                    if (response.statusCode == 200) {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Text('Success'),
                                            content: Text(
                                                'You registered successfully!'),
                                            actions: <Widget>[
                                              TextButton(
                                                child: Text('OK'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    } else {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Text('Error'),
                                            content:
                                                Text('Registration failed.'),
                                            actions: <Widget>[
                                              TextButton(
                                                child: Text('OK'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    }
                                  }
                                },
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account'),
                      InkWell(
                        onTap: () => Navigator.of(context).pop(),
                        child: Text(
                          'Sign in here',
                          style: TextStyle(color: Colors.red),
                        ),
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
