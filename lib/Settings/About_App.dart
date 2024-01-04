import 'package:flutter/material.dart';

class aboutApp extends StatelessWidget {
  const aboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: 850, width: 500,
          decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(image: AssetImage("asset/app.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Color(0xff30cbe5).withOpacity(0.8), BlendMode.color)
          ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 520, width: 380,
                decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.85),
                // color: Color(0xff30cbe5).withOpacity(0.85),
                borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(45),
                      child: Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                    ),
                    Container(
                      height: 55, width: 250,
                      child: ElevatedButton(onPressed: 
                      (){
                        Navigator.pop(context);
                      }, style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Color(0xff30cbe5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                      ),
                      child: Text("Go back to app",
                      style: TextStyle(fontSize: 22,
                      fontWeight: FontWeight.w400
                      ),
                      )))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
