import 'package:flutter/material.dart';
import 'package:ui_design_the_second/post_builder.dart';

class ProfilePage extends StatelessWidget {
  final String pPLink;
  final String name;
  final String surName;
  final String coverLink;
  final String username;

  const ProfilePage(
      {super.key,
      required this.pPLink,
      required this.name,
      required this.surName,
      required this.coverLink,
      required this.username});

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
                          image: NetworkImage(coverLink), fit: BoxFit.cover)),
                ),
                Positioned(
                  left: 20.0,
                  top: 120.0,
                  child: Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(pPLink), fit: BoxFit.cover),
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(100.0),
                        border: Border.all(width: 2.0, color: Colors.white)),
                  ),
                ),
                Positioned(
                  left: 105.0,
                  top: 158.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$name $surName",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "@$username",
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
                        color: Colors.white,
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
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 70.0,
              color: Colors.grey[200],
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    columnBuilder("31k", "Followers"),
                    columnBuilder("420", "Follwed"),
                    columnBuilder("69", "Posts"),
                  ]),
            ),
            const PostBuilder(
              pPLink:
                  "https://upload.wikimedia.org/wikipedia/tr/3/3d/K%C3%BC%C3%A7%C3%BCk_anakin.jpg",
              name: "say my",
              surName: "name",
              postLink:
                  "https://www.geekdergi.com/wp-content/uploads/2021/09/Darth-Vader.jpg",
              timePassed: "3 hours ago",
              description: "eheh",
            ),
            const PostBuilder(
              pPLink:
                  "https://upload.wikimedia.org/wikipedia/tr/3/3d/K%C3%BC%C3%A7%C3%BCk_anakin.jpg",
              name: "say my",
              surName: "name",
              postLink:
                  "https://upload.wikimedia.org/wikipedia/tr/3/3d/K%C3%BC%C3%A7%C3%BCk_anakin.jpg",
              timePassed: "2 hours ago",
              description: "hehe",
            ),
          ],
        ));
  }

  Column columnBuilder(String number, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          number,
          style: TextStyle(
              color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 4.0,
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
              fontWeight: FontWeight.normal),
        )
      ],
    );
  }
}
