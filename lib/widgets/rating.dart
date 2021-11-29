import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          RatingStar(color: Colors.white),
          RatingStar(color: Colors.white),
          RatingStar(color: Colors.white),
          RatingStar(color: Color(0xFF1A1927)),
          RatingStar(color: Color(0xFF1A1927)),
        ],
      ),
    );
  }
}

class RatingStar extends StatelessWidget {
  const RatingStar({
    Key key,
    @required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: CircleAvatar(
          radius: 24,
          backgroundColor: const Color(0xFF2A293A),
          child: FittedBox(
            child: Icon(
              Icons.star_rate,
              size: 32.0,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
