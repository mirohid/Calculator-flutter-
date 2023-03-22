
// import 'dart:html';

import 'package:flutter/material.dart';
import 'calculator.dart';
// import 'api_call.dart';
void main() {
  runApp(const SampleApp());
}

class SampleApp extends StatelessWidget {
  const SampleApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Home-Page',
      theme: ThemeData(

      primarySwatch: Colors.pink,
      ),
      home: const SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  const SampleAppPage({super.key});

  @override
  State<SampleAppPage> createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  get child => null;



  ShowCalculator(){
    Navigator.push(
      this.context,
      MaterialPageRoute(builder: (context) => const MyApp()),
    );}


  // Api_call(){
  //   Navigator.push(
  //     this.context,
  //     MaterialPageRoute(builder: (context) => const ApiCall()) 
  //     );}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home_Page'),
      ),
      body: Center(
        child:  Column(
        
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10)
              ),
              onPressed: ShowCalculator, 
              child: const Text("CALCULATOR")),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10)
              ),
              onPressed: (){}, 
              child: const Text("API-CALL")
            ),
          ],
        )
        ),
    );
  }
}