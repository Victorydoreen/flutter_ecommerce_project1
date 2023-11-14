import 'package:flutter/material.dart';
import 'package:gbstore_fashions/categories.dart';
import 'package:gbstore_fashions/item_categories.dart';
import 'package:gbstore_fashions/popular_items.dart';
// import 'package:flutter_login/categories.dart';
// import 'package:flutter_login/item-categories.dart';
// import 'package:flutter_login/popular-items.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 42, 165),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(right: 10, left: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 242, 42, 165),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        // color: Colors.red, // Set badgeColor here

                        child: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.shopping_cart,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // welcome
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to GBStore, we're happy to have you",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                          
                    ),
                    Text(
                      "Check out our different attires",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Text(
                      "Thank you for shopping with us!",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
              // search widget
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 35,
                // width: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Container(
                      margin: EdgeInsets.only(left: 100),
                      width: 100,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "You can search here",
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.filter_list),
                  ],
                ),
              ),
              // products widgets
              Container(
                padding: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Categories(),
                    PopularItems(),
                    Items(),
                  ],
                  
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
