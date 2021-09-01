import 'package:flutter/material.dart';
import 'package:untitled/Custom%20Widgets/CustomBottomNavigationBar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 150,
              child: Center(
                child: Text("Home"),
              ),
            ),
            CustomBottomNavBar(
              navCount: 3,
              isClicked1: false,
              isClicked2: false,
              isClicked3: false,
              //Icon: Icons.add,
            ),
          ],
        ),
      ),
    );
  }
}
