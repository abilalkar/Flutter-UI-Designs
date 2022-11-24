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
      title: 'Entry Page Project',
      theme: ThemeData(
        primaryColor: Colors.purple,
        //colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
        //.copyWith(secondary: Colors.black45), now that i learned it...
      ),
      home: const EnrtyPage(),
    );
  }
}

class EnrtyPage extends StatelessWidget {
  const EnrtyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(children: <Widget>[
          SizedBox(
            height: 40.0,
          ),
          FlutterLogo(
            size: 70.0,
            textColor: Color.fromARGB(17, 158, 158, 158),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Flutter Team",
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            height: MediaQuery.of(context).size.height / 3.5,
            color: Colors.white,
            alignment: Alignment.topCenter,
            child: const Text("abc"),
          )
        ]),
      ),
    );
  }
}
