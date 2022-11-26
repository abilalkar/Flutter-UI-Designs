import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 200.0,
                  color: Colors.yellow,
                ),
                Container(
                  height: 160.0,
                  color: Colors.green,
                ),
                Positioned(
                  left: 20.0,
                  top: 120.0,
                  child: Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(100.0),
                        border: Border.all(width: 2.0, color: Colors.white)),
                  ),
                ),
                Positioned(
                  left: 105.0,
                  top: 155.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "say my name",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "heisenberg",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 40.0,
                )
              ],
            )
          ],
        ));
  }
}
