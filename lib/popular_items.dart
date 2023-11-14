import 'package:flutter/material.dart';

class PopularItems extends StatelessWidget {
  const PopularItems({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Our Trending Clothes",
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
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 1; i < 40; i++)
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 6,
                        ),
                      ]),
                  //   child: Image.network(
                  child: Image.asset(
                    "images/$i.jpeg"),
                  //       // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhgdYcj4DLxQUCU_7PRHn-n0PcGcZh-KPtandsGk0KG6XV7Ax_fj9w7uOb8f0jk-LCgSE&usqp=CAU"),
                ) // )
            ],
          ),
        )
      ],
    );
  }
}
