import 'package:flutter/material.dart';
import 'package:fresh_food_app/modules/dishes.dart';
import 'package:fresh_food_app/screens/dishpage.dart';
import 'package:fresh_food_app/styles/textstyles.dart';

class DishCard extends StatefulWidget {
  final Dishes dish;

  DishCard(this.dish);

  @override
  _DishCardState createState() => _DishCardState();
}

class _DishCardState extends State<DishCard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.5;
    return Hero(
      tag: widget.dish.photo,
      child: GestureDetector(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DishPage(widget.dish))),
        child: Container(
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          width: width,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                top: 0,
                child: Container(
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: Container(
                            color: Colors.red,
                            width: width - 12,
                            height: MediaQuery.of(context).size.height * 0.32,
                            child: Image.asset(
                              widget.dish.photo,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          widget.dish.name,
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            Text("${widget.dish.ingredients.length} ingredients",
                                style: imageCaption),
                            Text(
                              " · ",
                              style: imageCaption.copyWith(fontSize: 18),
                            ),
                            Text("${widget.dish.time} min", style: imageCaption)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 60,
                right: 10,
                child: IconButton(
                  icon: widget.dish.isLiked
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_border),
                  color: widget.dish.isLiked ? Colors.red[400] : Colors.grey[300],
                  onPressed: () {
                    setState(() {
                      widget.dish.isLiked = !widget.dish.isLiked;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
