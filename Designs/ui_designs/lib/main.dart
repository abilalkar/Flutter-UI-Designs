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
          Material(
            borderRadius: BorderRadius.circular(20.0),
            elevation: 7.0,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.purple.shade300,
                        Colors.purple.shade100,
                      ]),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)),
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 4.5,
              alignment: Alignment.center,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        width: double.infinity,
                        height: 40.0,
                        decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius: BorderRadius.circular(20.0)),
                        alignment: Alignment.center,
                        child: Text(
                          "Sign up with mail",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(children: <Widget>[
                        Expanded(
                          child: Container(
                            //width: 100.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                                color: Colors.indigo,
                                borderRadius: BorderRadius.circular(20.0)),
                            alignment: Alignment.center,
                            child: Text(
                              "Facebook",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Container(
                            //width: 100.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.circular(20.0)),
                            alignment: Alignment.center,
                            child: Text(
                              "Google",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
