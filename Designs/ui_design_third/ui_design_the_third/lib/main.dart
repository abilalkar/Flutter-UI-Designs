// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_design_the_third/products.dart';
import 'package:ui_design_the_third/shopping_cart.dart';

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
      title: 'third project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int activeContentNo = 0;
  List _contents = [];

  @override
  void initState() {
    super.initState();
    _contents = [
      Products(),
      ShoppingCart(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 104, 114, 128),
        centerTitle: true,
        title: Text(
          "Order Takes It Home",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: _contents[activeContentNo],
      drawer: Drawer(
        width: 250.0,
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: [
            UserAccountsDrawerHeader(
              arrowColor: Colors.black,
              accountName: Text("bilal.kar"),
              accountEmail: Text(
                "bilal.kar@gmail.com",
              ),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    100.0,
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://www.karamanmagazin.com/images/haberler/2020/07/karaman-in-gururu-yine-basari-dan.gif",
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
              ),
            ),
            ListTile(
              title: Text("My Orders"),
              onTap: () {},
            ),
            ListTile(
              title: Text("My Coupons"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Settings"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Log Out"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activeContentNo,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Products",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: "Shopping Cart",
          ),
        ],
        onTap: (int positionNumber) => setState(() {
          activeContentNo = positionNumber;
        }),
      ),
    );
  }
}
