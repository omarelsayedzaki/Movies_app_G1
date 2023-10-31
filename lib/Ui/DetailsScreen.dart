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
            'Dora and the lost city of gold',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Stack(children: [
              Image.asset("assets/images/Image.png"),
              Positioned(
                  top: 75,
                  left: 165,
                  child: Image.asset("assets/images/play-button-2.png")),
            ]),
            Text("Dora and the lost city of gold"),
            Text("2019  PG-13  2h 7m"),
            Row(children: [
              Image.asset("assets/images/ImageSmall.png"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Action")),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 110,
                      width: 200,
                      child: Text(
                          "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school. "),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text("7.7")
                      ],
                    ),
                  )
                ],
              )
              // GridView.count(
              //   crossAxisSpacing: 3,
              //   mainAxisSpacing: 3,
              //   crossAxisCount: 2,
              //   children: [
              //     ElevatedButton(onPressed: () {}, child: Text("Action")),
              //     ElevatedButton(onPressed: () {}, child: Text("Action")),
              //     ElevatedButton(onPressed: () {}, child: Text("Action")),
              //     ElevatedButton(onPressed: () {}, child: Text("Action")),
              //   ],
              // ),
            ]),
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
                        "More Like This",
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
      ),
    );
  }
}
