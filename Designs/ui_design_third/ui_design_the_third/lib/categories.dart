import 'package:flutter/material.dart';
import 'package:ui_design_the_third/product_detail.dart';

class Categories extends StatefulWidget {
  final String categories;

  const Categories({super.key, required this.categories});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  late List<Widget> listToShow;

  @override
  void initState() {
    super.initState();

    if (widget.categories == "milk") {
      listToShow = [
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
      ];
    } else if (widget.categories == "chocolate") {
      listToShow = [
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
      ];
    } else if (widget.categories == "walter white") {
      listToShow = [
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
      ];
    } else if (widget.categories == "kid named finger") {
      listToShow = [
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
      ];
    } else if (widget.categories == "saul gooddamn") {
      listToShow = [
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
      ];
    } else if (widget.categories == "kim wrexler") {
      listToShow = [
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
        productCard("Milk", 3,
            "https://cdn.pixabay.com/photo/2021/03/22/13/48/copyright-6114655_960_720.jpg"),
      ];
    }
  }

  Widget productCard(String name, double price, String imageLink) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetail(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 3.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60.0,
              width: 110.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage(imageLink),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              "$price\$",
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 146, 50, 43),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 15.0,
      crossAxisSpacing: 15.0,
      padding: const EdgeInsets.all(15.0),
      childAspectRatio: 1,
      children: listToShow,
    );
  }
}
