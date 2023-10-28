import 'package:flutter/material.dart';

class searchTab extends StatelessWidget {
  const searchTab({super.key});
  static const String routeName = 'SearchTab';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: "Search",
                      label: Text(
                        "search",
                        style: TextStyle(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Color(0xff514F4F)),
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
              SizedBox(
                height: 350,
              ),
              Center(child: Image.asset("assets/images/no movie found.png"))
            ],
          ),
        ),
      ),
    );
  }
}
