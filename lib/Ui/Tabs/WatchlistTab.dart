import 'package:flutter/material.dart';

import '../watchListItem/WatchListItem.dart';

class WatchlistTab extends StatelessWidget {
  const WatchlistTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Watchlist",
            style: TextStyle(fontSize: 22),
          ),
          Expanded(
            child: ListView(children: [
              WatchListItem(),
              WatchListItem(),
              WatchListItem(),
              WatchListItem(),
              WatchListItem(),
              WatchListItem(),
              WatchListItem(),
              WatchListItem(),
              WatchListItem(),
            ]),
          ),
        ],
      ),
    );
  }
}
