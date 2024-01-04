// import 'package:flutter/material.dart';
// import 'package:fruits_app/interface.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: Container(
//           height: 900,
//           width: 500,
//           decoration: BoxDecoration(
//             color: Color(0xff30cbe5),
//             // image: DecorationImage(image: image)
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Container(
//                 height: 500,
//                 width: 600,
//                 decoration: BoxDecoration(
//                  borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(100),
//                   topRight: Radius.circular(100)
//                  ),
//                   color: Colors.white
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.only(right: 70),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(right: 100),
//                         child: Text("All your",
//                         style: TextStyle(fontSize: 35, 
//                         fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       Text("Kitchen needs",
//                       style: TextStyle(fontSize: 35, 
//                       color: Color(0xff30cbe5),
//                       fontWeight: FontWeight.bold),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 100),
//                         child: Text("are here",
//                         style: TextStyle(fontSize: 35, 
//                         fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       SizedBox(height: 10,),
//                        Container(
//                         margin: EdgeInsets.only(left: 60),
//                          child: Padding(
//                           padding: const EdgeInsets.only(right: 0),
//                           child: Text("is simply industry.a galley of type and book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more versions of Lorem Ipsum.",
//                           style: TextStyle(fontSize: 18, 
//                           color: Colors.grey[500],
//                           fontWeight: FontWeight.w400),
//                           ),
//                           ),
//                        ),
//                        SizedBox(height: 12,),
//                        Padding(
//                          padding: const EdgeInsets.only(right: 45),
//                          child: Container(
//                           height: 45, width: 190,
//                            child: ElevatedButton(onPressed: (){
//                             Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
//                            },
//                            style: ElevatedButton.styleFrom(
//                             elevation: 0,
//                             backgroundColor: Color(0xff30cbe5),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10),
//                              ),
//                            ), 
//                            child: Text("Get started now",
//                            style: TextStyle(
//                            fontSize: 18,
//                            ),
//                            )
//                            ),
//                          ),
//                        )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
