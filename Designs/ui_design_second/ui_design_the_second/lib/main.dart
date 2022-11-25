import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lets see where we are going to see this title',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey.shade400,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey[10],
              size: 30.0,
            ),
            onPressed: () {}),
        title: Text(
          "Social Network",
          style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade800),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Color.fromARGB(255, 92, 126, 156),
              size: 30.0,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 80.0,
            color: Colors.grey[300],
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(100.0)),
                    ),
                    const Text(
                      "Username",
                      style: TextStyle(fontSize: 12.0, color: Colors.black),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
