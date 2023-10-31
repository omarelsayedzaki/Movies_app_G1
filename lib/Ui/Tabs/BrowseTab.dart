import 'package:flutter/material.dart';

class BrowseTab extends StatelessWidget {
  const BrowseTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Browse Category ",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0,
                children: [
                  Image.asset("assets/images/Browse Category .png"),
                  Image.asset("assets/images/Browse Category .png"),
                  Image.asset("assets/images/Browse Category .png"),
                  Image.asset("assets/images/Browse Category .png"),
                  Image.asset("assets/images/Browse Category .png"),
                  Image.asset("assets/images/Browse Category .png"),
                  Image.asset("assets/images/Browse Category .png"),
                  Image.asset("assets/images/Browse Category .png"),
                  Image.asset("assets/images/Browse Category .png"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
