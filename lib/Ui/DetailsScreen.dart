import 'package:flutter/material.dart';
import 'package:movies_g1_mon/Ui/HomeScreen.dart';
import 'package:movies_g1_mon/Ui/recomendrdWidget/recomendrdWidget.dart';

class DetailsScreen extends StatelessWidget {
  static const String routeName = 'DetailsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, HomeScreen.routeName);
          },
        ),
        title: Center(
          child: Text(
            'movie name ',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(children: [
            Image.asset("assets/images/Image.png"),
            Positioned(
                top: 75,
                left: 165,
                child: Image.asset("assets/images/play-button-2.png")),
          ]),
          Text("Dora and the lost city of gold"),
          Text("2019  PG-13  2h 7m"),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              color: Color(0xff282A28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      "Recomended",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        recomendrdWidget(),
                        SizedBox(
                          width: 10,
                        ),
                        recomendrdWidget(),
                        SizedBox(
                          width: 10,
                        ),
                        recomendrdWidget(),
                        SizedBox(
                          width: 10,
                        ),
                        recomendrdWidget(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
