import 'package:flutter/material.dart';

class Dishes {
  String name;
  String photo;
  bool isLiked;
  List<Ingredients> ingredients;
  List<String> steps;
  int time;
  int calories;
  int price;

  Dishes(
      {this.name,
      this.photo,
      this.isLiked,
      this.ingredients,
      this.steps,
      this.time,
      this.calories,
      this.price});
}

class Ingredients {
  String name;
  String photo;
  String quantity;
  Color containerColor;

  Ingredients({this.name, this.photo, this.quantity, this.containerColor});
}

List<Ingredients> ingredients = [
  Ingredients(name: "Tomato", photo: "assets/tomato.jpg", quantity: "1 item", containerColor: Colors.red[300].withOpacity(0.2)),
  Ingredients(name: "Cheese", photo: "assets/cheese.jpg", quantity: "200 gr", containerColor: Colors.yellow[300].withOpacity(0.2)),
  Ingredients(name: "Greens", photo: "assets/lettuce.jpg", quantity: "1 item", containerColor: Colors.green[300].withOpacity(0.2)),
  Ingredients(name: "Onion", photo: "assets/onion.jpg", quantity: "1/2 item", containerColor: Colors.red[200].withOpacity(0.2)),
];

List<String> steps = [
  """Wash the head of romaine lettuce well to rid it of any pesticides. Tear the washed lettuce into small, bite-sized pieces by hand and place the lettuce pieces into a large serving bowl.[1]
  If you want your lettuce to come out in more uniform pieces, use a knife to chop up your lettuce instead of tearing it.
  If you're not a fan of romaine, feel free to substitute your favorite lettuce, like butter lettuce or iceberg lettuce.""",
  """Peel the red onion and slice it thinly. Chop the cucumber into rounds and the tomatoes into wedges. Place the fresh ingredients on top of the lettuce in the serving bowl.[2]"""
      """Sprinkle the salad with crumbled feta cheese. Top it off with pitted kalamata olives. Sprinkle the salad with a dash of dried oregano. [3]
If you don’t have access to kalamata olives for whatever reason, black olives work just as well as a substitute.
Freshly chopped oregano can be substituted for dried oregano."""
];

List<Dishes> dishes = [
  Dishes(
    name: "Greek salad",
    photo: "assets/greeksalad.jpg",
    isLiked: false,
    ingredients: ingredients,
    steps: steps,
    time: 30,
    calories: 234,
    price: 3,
  ),
  Dishes(
    name: "Pasta Carbonara",
    photo: "assets/pasta.jpg",
    isLiked: false,
    ingredients: ingredients,
    steps: steps,
    time: 30,
    calories: 234,
    price: 3,
  )
];
