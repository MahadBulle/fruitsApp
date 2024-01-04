import 'package:flutter/material.dart';
import 'package:fruits_app/Login_Forms/SingIn.dart';

void main() {
  runApp(const Fruits());
}

class Fruits extends StatelessWidget {
  const Fruits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Set initial route to '/'
      routes: {
        '/': (context) => loginscreen(), // Route for login screen
        // Add other routes here if needed
      },
    );
  }
}
