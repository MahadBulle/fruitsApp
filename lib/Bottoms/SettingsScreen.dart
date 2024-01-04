import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/Settings/About_App.dart';
import 'package:fruits_app/Settings/About_dev.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        elevation: 0,
        backgroundColor: Color(0xff30cbe5),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: 200),
              height: 60,
              width: 600,
              child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[50],
                    elevation: 0,
                  ),
                  icon: Icon( Icons.language_outlined,
                  // color: Color(0xff30cbe5),
                  color: Colors.black,
                  size: 30,
                  ),
                  label: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Languages",
                    style: TextStyle(
                      fontSize: 22,
                      // color: Color(0xff30cbe5),
                      color: Colors.black,
                      fontWeight: FontWeight.w400
                    ),
                    ),
                  ),
                  ),
                  ),
                  Container(
            margin: EdgeInsets.only(right: 200),
              height: 60,
              width: 600,
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>aboutApp()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[50],
                    elevation: 0,
                  ),
                  icon: Icon(Icons.local_grocery_store_outlined,
                  // color: Color(0xff30cbe5),
                  color: Colors.black,
                  size: 30,
                  ),
                  label: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("About App",
                    style: TextStyle(
                      fontSize: 22,
                      // color: Color(0xff30cbe5),
                      color: Colors.black,
                      fontWeight: FontWeight.w400
                    ),
                    ),
                  ),
                  ),
                  ),
                   Container(
            margin: EdgeInsets.only(right: 127),
              height: 60,
              width: 600,
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>aboutdev()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[50],
                    elevation: 0,
                  ),
                  icon: Icon(FluentIcons.code_16_regular,
                  color: Colors.black,
                  size: 30,
                  ),
                  label: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("About Developers",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.w400
                    ),
                    ),
                  ), 
                  ),
                  ),
                  
        ],
      ),
    );
  }
}
