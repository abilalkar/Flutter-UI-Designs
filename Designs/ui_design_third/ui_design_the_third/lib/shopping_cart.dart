import 'dart:math';

import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Text(
            "My Shopping Cart",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 128, 85, 85),
            ),
          ),
        ),
        checkBuilder("Full Fat Milk", 3, 4),
        checkBuilder("Chocoalte Wafer", 1, 2.5),
        checkBuilder("Toast Bread", 2, 5),
        Padding(
          padding: const EdgeInsets.only(right: 50.0, top: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 128, 85, 85),
                    ),
                  ),
                  Text(
                    "idk",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text(
                "Finish Shopping",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  ListTile checkBuilder(String productName, int pieces, double price) {
    final double Finalprice = price * pieces;
    return ListTile(
      title: Text(
        productName,
      ),
      subtitle: Text(
        "$pieces X $price\$",
      ),
      trailing: Text(
        "$Finalprice\$",
      ),
    );
  }
}
