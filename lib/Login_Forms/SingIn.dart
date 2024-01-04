import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:fruits_app/Login_Forms/SingUp.dart';
import 'package:fruits_app/interface.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _message = ''; // Added for displaying login status

  Future<void> loginUser(BuildContext context) async {
    final String apiUrl =
        'https://fruitsapii.vercel.app/login'; // Your API endpoint

    print({
      'email': _emailController.text,
      'password': _passwordController.text,
    });

    final Map<String, String> data = {
      'email': _emailController.text,
      'password': _passwordController.text,
    };

    final response = await http.post(
      Uri.parse(apiUrl),
      body: json.encode(data),
      headers: {
        'Content-Type': 'application/json', // Set the proper headers
      },
    );
    print(response.statusCode); // Check the status code
    print(response.body); // Check the entire response body
    if (response.statusCode == 200) {
      // Handle successful login here
      print('Login successful');
      print(json.decode(response.body)); // Access response data here
      setState(() {
        _message = 'Login successful'; // Set the success message
      });
      // Navigate to the interface.dart page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                MyHomePage()), // Navigate to your interface.dart screen
      );
    } else {
      // Handle login failure here
      print('Login failed');
      print(json.decode(response.body)); // Print error details
      setState(() {
        _message = 'Login failed'; // Set the failure message
      });
      // Show error message or handle failure accordingly
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    height: 500,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Center(
                              child: Text(
                                'Login Here',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextFormField(
                                    controller: _emailController,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your email';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      hintText: 'Enter your Email',
                                      prefixIcon: Icon(
                                        FluentIcons.mail_20_regular,
                                        color: Color(0xff30cbe5),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: const BorderSide(
                                          color: Color(0xff30cbe5),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: const BorderSide(
                                          color: Color(0xff30cbe5),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.03,
                                  ),
                                  TextFormField(
                                    controller: _passwordController,
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: true,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your password';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      hintText: 'Enter your Password',
                                      prefixIcon: Icon(
                                        FluentIcons.lock_closed_20_regular,
                                        color: Color(0xff30cbe5),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: const BorderSide(
                                          color: Color(0xff30cbe5),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: const BorderSide(
                                          color: Color(0xff30cbe5),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
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
                                    // Reset _message here
                                    setState(() {
                                      _message =
                                          ''; // Reset the message before attempting a new login
                                    });

                                    if (_formKey.currentState!.validate()) {
                                      await loginUser(
                                          context); // Trigger the asynchronous function with await
                                    }
                                  },
                                  child: Text('Login',
                                      style: TextStyle(fontSize: 27)),
                                ),
                              ),
                            ),
                          ),
                          // Display login status message
                          if (_message.isNotEmpty)
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                _message,
                                style: TextStyle(
                                  color: _message.contains('successful')
                                      ? Colors.green
                                      : Colors.red,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'if you don\'t have an account',
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(width: 5),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => registerscreen(),
                            ));
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Color(0xff30cbe5),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
