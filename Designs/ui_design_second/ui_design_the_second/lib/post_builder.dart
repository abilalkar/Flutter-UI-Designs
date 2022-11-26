import 'package:flutter/material.dart';

class PostBuilder extends StatelessWidget {
  final String pPLink;
  final String name;
  final String surName;
  final String timePassed;
  final String postLink;
  final String description;

  PostBuilder(
      {super.key,
      required this.pPLink,
      required this.name,
      required this.surName,
      required this.timePassed,
      required this.postLink,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          padding: EdgeInsets.all(10.0),
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: Colors.black,
                        image: DecorationImage(
                            image: NetworkImage(pPLink), fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name + " " + surName,
                            style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        Text(
                          timePassed,
                          style: TextStyle(color: Colors.grey, fontSize: 12.0),
                        )
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.more_vert,
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              description,
              style: TextStyle(color: Colors.black, fontSize: 14.0),
            ),
            SizedBox(
              height: 8.0,
            ),
            Image.network(
              postLink,
              width: double.infinity,
              height: 214.0,
              fit: BoxFit.cover,
            ),
            /*  SizedBox(
              height: 10.0,
            ),*/
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BelowButtonWidget(
                  Icons.favorite,
                ),
                BelowButtonWidget(
                  Icons.comment,
                ),
                TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.share),
                          color: Color.fromARGB(255, 72, 121, 76),
                        ),
                        Text(
                          "Share",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[500]),
                        ),
                      ],
                    ))
              ],
            )
          ]),
        ),
      ),
    );
  }
}

class BelowButtonWidget extends StatelessWidget {
  String widgetText = "Like";
  Color widgetColor = Color.fromARGB(255, 151, 83, 83);
  IconData myWidgetIcon;

  BelowButtonWidget(this.myWidgetIcon, {super.key});

  @override
  Widget build(BuildContext context) {
    if (myWidgetIcon == Icons.comment) {
      widgetText = "Comment";
      widgetColor = Color.fromARGB(255, 56, 76, 92);
    } else if (myWidgetIcon == Icons.favorite) {
      widgetText = "Like";
      widgetColor = Color.fromARGB(255, 151, 83, 83);
    } else {
      widgetText = "Share";
      widgetColor = Color.fromARGB(255, 73, 105, 74);
    }
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: (() => {}),
        child: Container(
          padding: EdgeInsets.all(5.0),
          child: Row(children: [
            Icon(
              myWidgetIcon,
              color: widgetColor,
            ),
            SizedBox(
              width: 3.0,
            ),
            Text(
              widgetText,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey[500]),
            )
          ]),
        ),
      ),
    );
  }
}
