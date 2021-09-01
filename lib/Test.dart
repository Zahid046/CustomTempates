import 'package:flutter/material.dart';
import 'package:untitled/Custom%20Widgets/CustomBottomNavigationBar.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 150,
              child: Center(
                child: Text("Test"),
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
