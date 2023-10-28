import 'package:flutter/material.dart';
import 'package:movies_g1_mon/Ui/DetailsScreen.dart';
import 'package:movies_g1_mon/Ui/Tabs/BrowseTab.dart';
import 'package:movies_g1_mon/Ui/Tabs/WatchlistTab.dart';
import 'package:movies_g1_mon/Ui/Tabs/homeScreenTab.dart';
import 'package:movies_g1_mon/Ui/Tabs/searchTab.dart';
import 'package:movies_g1_mon/Ui/recomendrdWidget/recomendrdWidget.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedTabIndex = index;
          });
        },
        currentIndex: selectedTabIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xffFFBB3B),
        selectedIconTheme: IconThemeData(color: Color(0xffFFBB3B)),
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
      body: tabs[selectedTabIndex],
    );
  }

  List<Widget> tabs = [
    HomeScreenTab(),
    searchTab(),
    BrowseTab(),
    WatchlistTab()
  ];
}
