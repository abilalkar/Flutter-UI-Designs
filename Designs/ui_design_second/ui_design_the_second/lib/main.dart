import 'package:flutter/material.dart';
import 'package:ui_design_the_second/post_builder.dart';

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
      title: 'Lets see where we are going to see this title',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey.shade400,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey[10],
              size: 30.0,
            ),
            onPressed: () {}),
        title: Text(
          "Social Network",
          style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade800),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Color.fromARGB(255, 92, 126, 156),
              size: 30.0,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[300],
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 3.0),
                      blurRadius: 5.0)
                ]),
            height: 85.0,
            child: ListView(
              physics:
                  const AlwaysScrollableScrollPhysics(), //somehow my storybar is not scrolling, could not fix it rn
              scrollDirection: Axis.horizontal,
              children: [
                Column(),
                storyBarBuilder("vader"),
                storyBarBuilder("username1"),
                storyBarBuilder("obi wan"),
                storyBarBuilder("username3"),
                storyBarBuilder("username4"),
                storyBarBuilder("username5"),
                storyBarBuilder("username6"),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const PostBuilder(),
          const PostBuilder()
        ],
      ),
    );
  }

  Widget storyBarBuilder(String userName) {
    bool isActive = false;
    Color? activeColor = Colors.grey[300];
    String imageURL = "https://www.computerhope.com/jargon/g/guest-user.png";
    if (userName == "vader") {
      imageURL =
          "https://www.geekdergi.com/wp-content/uploads/2021/09/Darth-Vader.jpg";
      isActive = true;
    } else if (userName == "obi wan") {
      imageURL =
          "https://www.denofgeek.com/wp-content/uploads/2019/08/star-wars-obi-wan-kenobi-1-scaled.jpg?resize=768%2C432";
      isActive = true;
    }
    if (isActive) {
      activeColor = Colors.green;
    }
    return Padding(
      padding: const EdgeInsets.only(right: 5.0, left: 5.0, top: 5.0),
      child: Column(
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(imageURL)),
                    color: Colors.white,
                    border: Border.all(width: 2.0, color: Colors.grey),
                    borderRadius: BorderRadius.circular(100.0)),
              ),
              Container(
                width: 15.0,
                height: 15.0,
                decoration: BoxDecoration(
                    color: activeColor,
                    border: Border.all(width: 1.0, color: Colors.white),
                    borderRadius: BorderRadius.circular(100.0)),
              )
            ],
          ),
          const SizedBox(
            height: 2.0,
          ),
          Text(
            userName,
            style: const TextStyle(fontSize: 12.0, color: Colors.black),
          )
        ],
      ),
    );
  }
}
