import 'package:clima/services/detail_screen.dart';
import 'package:flutter/cupertino.dart';
class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function? onPress; // Make it nullable by adding '?'

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress != null ? () => onPress!() : null, // Check if onPress is not null before invoking it
      child: Container(
        child: cardChild,
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}