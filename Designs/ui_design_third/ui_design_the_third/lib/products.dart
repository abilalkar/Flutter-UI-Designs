// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_design_the_third/categories.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: controller,
          indicatorColor: Colors.orangeAccent,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          isScrollable: true,
          labelStyle: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
          tabs: [
            Tab(
              child: Text(
                "milk",
              ),
            ),
            Tab(
              child: Text(
                "chocolates",
              ),
            ),
            Tab(
              child: Text(
                "walter white",
              ),
            ),
            Tab(
              child: Text(
                "kid named finger",
              ),
            ),
            Tab(
              child: Text(
                "saul gooddamn",
              ),
            ),
            Tab(
              child: Text(
                "kim wrexler",
              ),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: controller,
            children: [
              Categories(
                categories: "milk",
              ),
              Categories(
                categories: "chocolate",
              ),
              Categories(
                categories: "walter white",
              ),
              Categories(
                categories: "kid named finger",
              ),
              Categories(
                categories: "saul gooddamn",
              ),
              Categories(
                categories: "kim wrexler",
              ),
            ],
          ),
        )
      ],
    );
  }
}
