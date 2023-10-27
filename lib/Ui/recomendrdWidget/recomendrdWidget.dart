import 'package:flutter/material.dart';

class recomendrdWidget extends StatelessWidget {
  const recomendrdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("assets/images/Group 17.png"),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
            ),
            Text(
              "7.7",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        Text(
          "Deadpool 2",
          style: TextStyle(color: Colors.white),
        ),
        Text(
          "2018  R  1h 59m",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
