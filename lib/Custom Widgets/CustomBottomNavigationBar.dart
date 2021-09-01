import 'package:flutter/material.dart';
import 'package:untitled/Page6.dart';
import 'package:untitled/Test.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int navCount;
  CustomBottomNavBar({Key? key, required this.navCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          color: Colors.grey,
          height: 70,
          child: Row(
            children: [
              Container(
                height: 70,
                width: navCount == 5
                    ? MediaQuery.of(context).size.width * .2
                    : navCount == 4
                        ? MediaQuery.of(context).size.width * .25
                        : navCount == 3
                            ? MediaQuery.of(context).size.width * .33
                            : MediaQuery.of(context).size.width * .5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Page6(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Star"),
                    )
                  ],
                ),
              ),
              Container(
                height: 70,
                width: navCount == 5
                    ? MediaQuery.of(context).size.width * .2
                    : navCount == 4
                        ? MediaQuery.of(context).size.width * .25
                        : navCount == 3
                            ? MediaQuery.of(context).size.width * .33
                            : MediaQuery.of(context).size.width * .5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Test(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Star"),
                    )
                  ],
                ),
              ),
              Visibility(
                visible: navCount >= 3 ? true : false,
                child: Container(
                  height: 70,
                  width: navCount == 5
                      ? MediaQuery.of(context).size.width * .2
                      : navCount == 4
                          ? MediaQuery.of(context).size.width * .25
                          : navCount == 3
                              ? MediaQuery.of(context).size.width * .33
                              : MediaQuery.of(context).size.width * .5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Star"),
                      )
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: navCount >= 4 ? true : false,
                child: Container(
                  height: 70,
                  width: navCount == 5
                      ? MediaQuery.of(context).size.width * .2
                      : navCount == 4
                          ? MediaQuery.of(context).size.width * .25
                          : navCount == 3
                              ? MediaQuery.of(context).size.width * .33
                              : MediaQuery.of(context).size.width * .5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Star"),
                      )
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: navCount >= 5 ? true : false,
                child: Container(
                  height: 70,
                  width: navCount == 5
                      ? MediaQuery.of(context).size.width * .2
                      : navCount == 4
                          ? MediaQuery.of(context).size.width * .25
                          : navCount == 3
                              ? MediaQuery.of(context).size.width * .33
                              : MediaQuery.of(context).size.width * .5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Star"),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
