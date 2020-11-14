import 'package:flutter/material.dart';
import 'package:fresh_food_app/modules/dishes.dart';
import 'package:fresh_food_app/modules/food.dart';
import 'package:fresh_food_app/modules/user.dart';
import 'package:fresh_food_app/widgets/bottom-navigationbar.dart';
import 'package:fresh_food_app/widgets/dishes.dart';
import 'file:///E:/Projects/AndroidStudioProjects/fresh_food_app/lib/styles/textstyles.dart';
import 'package:fresh_food_app/widgets/foodcard.dart';
import 'package:fresh_food_app/widgets/searchbar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                height: height,
                width: width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Hello, ${user.name}",
                          style: h1,
                        ),
                        SizedBox(
                          width: width * 0.1,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.orange,
                            height: 50,
                            width: 50,
                            child: Image.asset(
                              user.photo,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                    SearchBar(),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: width,
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: food.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 8.0),
                            child: foodCard(
                                name: food[index].name, photo: food[index].photo),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 20.0),
                      child: Text(
                        "Recommended",
                        style: h1.copyWith(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 20),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                            itemCount: dishes.length,
                            itemBuilder: (context, index) {
                              return DishCard(dishes[index]);
                            }),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100,)
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: height - 90),
            child: BottomBar(),
          )
        ],
      ),
    );
  }
}
