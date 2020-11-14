import 'package:flutter/material.dart';
import 'package:fresh_food_app/modules/dishes.dart';
import 'package:fresh_food_app/styles/textstyles.dart';
import 'package:fresh_food_app/widgets/dishpagecontainer.dart';
import 'package:fresh_food_app/widgets/gradientcontainer.dart';
import 'package:fresh_food_app/widgets/ingredientscard.dart';
import 'package:fresh_food_app/widgets/stepscard.dart';

class DishPage extends StatefulWidget {
  final Dishes dish;

  DishPage(this.dish);

  @override
  _DishPageState createState() => _DishPageState();
}

class _DishPageState extends State<DishPage> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: height,
            width: width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: height * 0.55,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
                        image: DecorationImage(
                          image: AssetImage(widget.dish.photo,
                          ),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 30, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          gradientContainer(
                            widget: IconButton(
                              icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 15,),
                              onPressed: () => Navigator.pop(context),
                            )
                          ),
                          gradientContainer(
                            widget: IconButton(
                                icon: widget.dish.isLiked ? Icon(Icons.favorite, color: Colors.red[400],) : Icon(Icons.favorite_border),
                                onPressed: ()
                                {
                                  setState(() {
                                    widget.dish.isLiked = !widget.dish.isLiked;
                                  });
                                }
                            )
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: width * 0.8),
                      child: dishPageContainer(dish: widget.dish, context: context),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 35, bottom: 21),
                  child: Text("Ingredients", style: h1.copyWith(fontSize: 20),),
                ),
                Expanded(
                  child: Container(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: ingredients.length,
                      itemBuilder: (context, index)
                      {
                        return ingredientsCard(ingredient: ingredients[index]);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40, left: 20, bottom: 30),
            child: Text("Cooking instructions", style: h1.copyWith(fontSize: 20),),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              height: height * 0.5,
              width: width,
              child: ListView.builder(
                itemCount: widget.dish.steps.length,
                itemBuilder: (context, index)
                {
                  return stepsCard(widget.dish.steps[index], index);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
