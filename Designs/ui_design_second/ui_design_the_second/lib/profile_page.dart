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
                  //color: Colors.yellow,
                ),
                Container(
                  height: 160.0,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/tr/thumb/e/ea/Vader_march.jpg/330px-Vader_march.jpg"),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  left: 20.0,
                  top: 120.0,
                  child: Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/tr/3/3d/K%C3%BC%C3%A7%C3%BCk_anakin.jpg"),
                            fit: BoxFit.cover),
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
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.0,
                        height: 60.0,
                      ),
                      BackButton(
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 125.0,
                  right: 20.0,
                  child: Container(
                    width: 80.0,
                    height: 30.00,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[300],
                      border: Border.all(width: 2.0, color: Colors.white),
                    ),
                    child: Row(children: [
                      SizedBox(
                        width: 5.0,
                      ),
                      Icon(
                        Icons.add_circle,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "Follow",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal),
                      )
                    ]),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
