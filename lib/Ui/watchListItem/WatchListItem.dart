import 'package:flutter/material.dart';

class WatchListItem extends StatelessWidget {
  const WatchListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/images/Group 24.png"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Alita Battle Angel"),
                    Text("2019"),
                    Text("Rosa Salazar, Christoph Waltz"),
                  ],
                ),
              )
            ],
          ),
          Divider()
        ],
      ),
    );
  }
}
