import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const RatingStar(color: Colors.white),
          const RatingStar(color: Colors.white),
          const RatingStar(color: Colors.white),
          const RatingStar(color: Color(0xFF1A1927)),
          const RatingStar(color: Color(0xFF1A1927)),
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
    return CircleAvatar(
      radius: 24,
      backgroundColor: const Color(0xFF2A293A),
      child: Icon(
        Icons.star_rate,
        size: 36.0,
        color: color,
      ),
    );
  }
}
