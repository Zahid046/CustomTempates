import 'package:flutter/material.dart';
import 'package:untitled/Custom%20Widgets/CustomBottomNavigationBar.dart';
import 'package:untitled/Home.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Favorite"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
            icon: Icon(
              Icons.home,
              size: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 150,
              child: Center(
                child: Text("Favorite"),
              ),
            ),
            CustomBottomNavBar(
              navCount: 3,
              isClicked1: false,
              isClicked2: true,
              isClicked3: false,
            ),
          ],
        ),
      ),
    );
  }
}
