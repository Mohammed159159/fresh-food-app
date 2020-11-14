import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

int currentIndex = 0;

class _BottomBarState extends State<BottomBar> {
  void notifyme()
  {
    setState(() {
      currentIndex = currentIndex;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,),
      height: 82,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            color: Colors.black26
          )
        ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          iconDisplayer(Icons.home, 0, notifyme),
          iconDisplayer(Icons.favorite_border, 1, notifyme),
          iconDisplayer(FontAwesomeIcons.servicestack, 2, notifyme),
          iconDisplayer(Icons.person, 3, notifyme),
        ],
      ),
    );
  }
}

Widget iconDisplayer(IconData icon, int index, Function notify)
{
  return  IconButton(icon: Icon(icon, color: currentIndex == index? Colors.deepOrangeAccent : Colors.grey[400],), onPressed: (){
    currentIndex = index;
    notify();
  },);
}
