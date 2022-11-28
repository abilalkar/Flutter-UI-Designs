// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Image.network(
                  "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
              BackButton(
                color: Colors.blueAccent,
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 18.0,
              ),
              Text(
                "Product Name",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Price",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 146, 72, 72),
                ),
              ),
              /*SizedBox(
                height: 8.0,
              ),*/
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  textAlign: TextAlign.center,
                  "This image is copyrighted, do not sell on. Anyone found selling this image will be prosecuted.",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    //color: Color.fromARGB(255, 146, 72, 72),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
