import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          /*Have to put color property in box decoration, if not you wll get an error.(Failed assertion: line 274 pos 15: 'color == null || decoration == null')*/
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
