import 'package:flutter/material.dart';
import 'package:untitled/Custom%20Widgets/CustomBottomNavigationBar.dart';

class Page6 extends StatelessWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page6"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 150,
              child: Center(
                child: Text("Page6"),
              ),
            ),
            CustomBottomNavBar(
              navCount: 2,
            ),
          ],
        ),
      ),
    );
  }
}
