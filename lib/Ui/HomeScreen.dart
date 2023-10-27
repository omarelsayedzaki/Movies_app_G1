import 'package:flutter/material.dart';
import 'package:movies_g1_mon/Ui/recomendrdWidget/recomendrdWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xffFFBB3B),
        unselectedItemColor: Color(0xffC6C6C6),
        backgroundColor: Color(0xff1A1A1A),
        items: [
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/Home icon.png"), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "SEARCH"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/Icon material-movie.png"),
              label: "Browse"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/Icon ionic-md-bookmarks.png"),
              label: "Watchlist"),
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 45),
              child: Container(
                color: Color(0xff121312),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset("assets/images/Image.png"),
                    Positioned(
                        top: 75,
                        left: 165,
                        child: Image.asset("assets/images/play-button-2.png")),
                    Positioned(
                        top: 90,
                        child: Image.asset("assets/images/ImageSmall.png")),
                    Positioned(
                        top: 220,
                        left: 150,
                        child: Text(
                          "Dora and the lost city of gold",
                          style: TextStyle(color: Colors.white),
                        )),
                    Positioned(
                        top: 250,
                        left: 150,
                        child: Text(
                          "2019  PG-13  2h 7m",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              color: Color(0xff282A28),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "New Releases ",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Image.asset("assets/images/1.png"),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset("assets/images/2.png"),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset("assets/images/3.png"),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset("assets/images/4.png"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
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
          ],
        ),
      ),
    );
  }
}
