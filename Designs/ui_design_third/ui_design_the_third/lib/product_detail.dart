// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final String name;
  final double price;
  final String imageLink;
  final bool isAvailable;

  ProductDetail({
    super.key,
    required this.name,
    required this.price,
    required this.imageLink,
    required this.isAvailable,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Hero(
                  tag: name,
                  child: Image.network(
                    imageLink,
                  )),
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
                name,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "$price\$",
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
                  color: isAvailable ? Colors.redAccent : Colors.grey,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: isAvailable
                      ? Text(
                          "Add to Cart",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        )
                      : Text(
                          "Not in Stock",
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
