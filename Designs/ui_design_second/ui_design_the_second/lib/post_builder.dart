import 'package:flutter/material.dart';

class PostBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          padding: const EdgeInsets.all(10.0),
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
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://www.geekdergi.com/wp-content/uploads/2021/09/Darth-Vader.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Darth Vader",
                            style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        Text(
                          "1 hour ago",
                          style: TextStyle(color: Colors.grey, fontSize: 12.0),
                        )
                      ],
                    ),
                  ],
                ),
                const Icon(
                  Icons.more_vert,
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "Image description",
              style: TextStyle(color: Colors.black, fontSize: 12.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Sheep_skin_for_sale.jpg/375px-Sheep_skin_for_sale.jpg",
              width: double.infinity,
              height: 220.0,
              fit: BoxFit.cover,
            ),
            /*const SizedBox(
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
                BelowButtonWidget(
                  Icons.share,
                ),
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
      child: InkWell(
        onTap: (() => {}),
        child: Container(
          padding: const EdgeInsets.all(5.0),
          child: Row(children: [
            Icon(
              myWidgetIcon,
              color: widgetColor,
            ),
            const SizedBox(
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
