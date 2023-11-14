import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
              "Trendy fashions categories",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 242, 42, 165),
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          // 50 rows
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (int i = 1; i < 30; i++)
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Image.asset(
                          "images/$i.jpeg",
                          height: 500,
                          width: 190,
                        ),
                      ),
// padding
                      Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "Trendy clothes category",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                )
            ],
          ),
        ),
      ],
    );
  }
}
