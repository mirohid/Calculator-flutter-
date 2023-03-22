
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class ApiCall extends StatelessWidget {
//   const ApiCall({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
      
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.pink,
//       ),
//       home: const MyHomePage2(title: 'API-Home-Page'),
//     );
//   }
// }

// class MyHomePage2 extends StatefulWidget {
//   const MyHomePage2({super.key, required this.title});
//   final String title;
//   @override
//   State<MyHomePage2> createState() => _MyHomePageState();
// }

// class User {
//   final int id;
//   final int userId;
//   final String title;

//   User({
//     required this.id,
//     required this.userId,
//     required this.title,
//   });

//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(id: json["id"], userId: json["userId"], title: json['title']);
//   }
// }

// class _MyHomePageState extends State<MyHomePage2> {
//   // late Future<User> futureUsers;
//   // late final futureUsers;
//   dynamic futureUsers;

//   @override
//   void initState() {
//     super.initState();
//     futureUsers = _loadData();
//     print(futureUsers);
//   }

//   Future<User> _loadData() async {
//     var response = await http
//         .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
//     if (response.statusCode == 200) {
//       var data = User.fromJson(jsonDecode(response.body));
//       return data;
//     } else {
//       throw Exception('falid to load user data');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: FutureBuilder<User>(
//             future: futureUsers,
//             builder: (context, data) {
//               return Text("Title:-" +
//                   data.data!.title +
//                   "," +
//                   "UserId" +
//                   data.data!.userId.toString() +
//                   "," +
//                   "Id" +
//                   data.data!.id.toString());
//             }),
//       ),
//     );
//   }
// }
