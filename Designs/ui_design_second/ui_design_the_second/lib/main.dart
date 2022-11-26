import 'package:flutter/material.dart';
import 'package:ui_design_the_second/post_builder.dart';
import 'package:ui_design_the_second/profile_page.dart';

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

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      children: [
                        notificationBuilder(
                          "Abidin Oğuzhan Zeybek followed you.",
                          "1 min ago.",
                        ),
                        notificationBuilder(
                          "Oğuzhan Şenusal Zeybek followed you.",
                          "15 mins ago.",
                        ),
                        notificationBuilder(
                          "Bilal Kar shared a post.",
                          "1 hour ago.",
                        )
                      ],
                    );
                  });
            },
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
                storyBarBuilder(
                    "vader",
                    "https://www.geekdergi.com/wp-content/uploads/2021/09/Darth-Vader.jpg",
                    true,
                    "https://cdn.pixabay.com/photo/2016/12/21/00/36/woman-1921883_960_720.jpg",
                    "Darth",
                    "Vader"),
                storyBarBuilder(
                    "osenuysal",
                    "https://media-exp1.licdn.com/dms/image/C4D03AQH18j3jX1CHQw/profile-displayphoto-shrink_800_800/0/1636666394118?e=1674691200&v=beta&t=3q6BmfOkVMmnodEZlrbtsaU_zMvWc41j6r7dsDdfzWA",
                    true,
                    "https://cdn.pixabay.com/photo/2018/09/30/16/26/sun-3713835_960_720.jpg",
                    "Oğuzhan",
                    "Şenuysal"),
                storyBarBuilder(
                    "obi wan",
                    "https://www.denofgeek.com/wp-content/uploads/2019/08/star-wars-obi-wan-kenobi-1-scaled.jpg?resize=768%2C432",
                    false,
                    "https://upload.wikimedia.org/wikipedia/tr/thumb/0/0f/Obi-Wan_Kenobi.png/330px-Obi-Wan_Kenobi.png",
                    "Obi Wan",
                    "Kenobi"),
                storyBarBuilder(
                    "zebyek",
                    "https://static.daktilo.com/sites/827/uploads/2015/05/12/31433-0.jpg",
                    false,
                    "https://cdn.pixabay.com/photo/2017/06/12/18/35/race-2396398_960_720.jpg",
                    "Abidin Oğuzhan",
                    "Zeybek"),
                storyBarBuilder(
                    "bilal",
                    "https://static.daktilo.com/sites/827/uploads/2020/07/03/113136-2.jpg",
                    true,
                    "https://cdn.pixabay.com/photo/2019/09/12/13/29/sunset-4471603_960_720.jpg",
                    "Bilal",
                    "Kar"),
                storyBarBuilder(
                    "tkozan",
                    "https://karaman.meb.gov.tr/meb_iys_dosyalar/2015_06/05180805_img_0606.jpg",
                    false,
                    "https://cdn.pixabay.com/photo/2020/03/18/13/02/nature-4943937_960_720.jpg",
                    "Tunahan",
                    "Kozan"),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const PostBuilder(
            pPLink:
                "https://www.denofgeek.com/wp-content/uploads/2019/08/star-wars-obi-wan-kenobi-1-scaled.jpg?resize=768%2C432",
            name: "Obi Wan",
            surName: "Kenobi",
            postLink:
                "https://static.daktilo.com/sites/827/uploads/2015/05/12/31433-0.jpg",
            timePassed: "3 hours ago",
            description: "eheh",
          ),
          const PostBuilder(
            pPLink:
                "https://www.geekdergi.com/wp-content/uploads/2021/09/Darth-Vader.jpg",
            name: "Darth",
            surName: "Vader",
            postLink:
                "https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Sheep_skin_for_sale.jpg/375px-Sheep_skin_for_sale.jpg",
            timePassed: "2 hours ago",
            description: "post",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 177, 164, 135),
        child: Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
      ),
    );
  }

  Padding notificationBuilder(String textInfo, String timeInfo) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 10.0, right: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textInfo,
            style: TextStyle(fontSize: 14.0),
          ),
          Text(
            timeInfo,
            style: TextStyle(fontSize: 14.0, color: Colors.grey),
          )
        ],
      ),
    );
  }

  Widget storyBarBuilder(String userName, String imageURL, bool isActive,
      String coverURL, String name, String surName) {
    Color? activeColor = Colors.grey[300];

    if (isActive) {
      activeColor = Colors.green;
    }
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ProfilePage(
                        coverLink: coverURL,
                        name: name,
                        surName: surName,
                        pPLink: imageURL,
                        username: userName,
                      )));
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 5.0, left: 5.0, top: 5.0),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Hero(
                    tag: userName,
                    child: Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover, image: NetworkImage(imageURL)),
                          color: Colors.white,
                          border: Border.all(width: 2.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(100.0)),
                    ),
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
        ),
      ),
    );
  }
}
