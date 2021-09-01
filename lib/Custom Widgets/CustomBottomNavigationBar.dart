import 'package:flutter/material.dart';
import 'package:untitled/Archive.dart';
import 'package:untitled/Favorite.dart';
import 'package:untitled/Star.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int navCount;
  final bool isClicked1;
  final bool isClicked2;
  final bool isClicked3;
  //final Icon;
  CustomBottomNavBar({
    Key? key,
    required this.navCount,
    required this.isClicked1,
    required this.isClicked2,
    required this.isClicked3,
    //this.Icon,
  }) : super(key: key);

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  Color cBlue = Color(0xff0070BA);
  Color cBlack = Color(0xff000000);
  @override
  Widget build(BuildContext context) {
    Route _createRoute(int a) {
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => a == 1
            ? const Star()
            : a == 2
                ? const Favorite()
                : const Archive(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return child;
        },
      );
    }

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          color: Colors.grey[200],
          height: 70,
          child: Row(
            children: [
              Container(
                height: 70,
                width: widget.navCount == 5
                    ? MediaQuery.of(context).size.width * .2
                    : widget.navCount == 4
                        ? MediaQuery.of(context).size.width * .25
                        : widget.navCount == 3
                            ? MediaQuery.of(context).size.width * .33
                            : MediaQuery.of(context).size.width * .5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(_createRoute(1));
                        },
                        icon: Icon(
                          Icons.star,
                          //widget.Icon,
                          color: widget.isClicked1 ? cBlue : cBlack,
                        ),
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(_createRoute(1));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: widget.isClicked1
                            ? Text(
                                "Star",
                                style: TextStyle(fontSize: 14, color: cBlue),
                              )
                            : Text(
                                "Star",
                                style: TextStyle(fontSize: 12, color: cBlack),
                              ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 70,
                width: widget.navCount == 5
                    ? MediaQuery.of(context).size.width * .2
                    : widget.navCount == 4
                        ? MediaQuery.of(context).size.width * .25
                        : widget.navCount == 3
                            ? MediaQuery.of(context).size.width * .33
                            : MediaQuery.of(context).size.width * .5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(_createRoute(2));
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: widget.isClicked2 ? cBlue : cBlack,
                        ),
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(_createRoute(2));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: widget.isClicked2
                            ? Text(
                                "Favorite",
                                style: TextStyle(fontSize: 14, color: cBlue),
                              )
                            : Text(
                                "Favorite",
                                style: TextStyle(fontSize: 12, color: cBlack),
                              ),
                      ),
                    )
                  ],
                ),
              ),
              Visibility(
                visible: widget.navCount >= 3 ? true : false,
                child: Container(
                  height: 70,
                  width: widget.navCount == 5
                      ? MediaQuery.of(context).size.width * .2
                      : widget.navCount == 4
                          ? MediaQuery.of(context).size.width * .25
                          : widget.navCount == 3
                              ? MediaQuery.of(context).size.width * .33
                              : MediaQuery.of(context).size.width * .5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(_createRoute(3));
                          },
                          icon: Icon(
                            Icons.archive,
                            color: widget.isClicked3 ? cBlue : cBlack,
                          ),
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacement(_createRoute(3));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: widget.isClicked3
                              ? Text(
                                  "Archive",
                                  style: TextStyle(fontSize: 14, color: cBlue),
                                )
                              : Text(
                                  "Archive",
                                  style: TextStyle(fontSize: 12, color: cBlack),
                                ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: widget.navCount >= 4 ? true : false,
                child: Container(
                  height: 70,
                  width: widget.navCount == 5
                      ? MediaQuery.of(context).size.width * .2
                      : widget.navCount == 4
                          ? MediaQuery.of(context).size.width * .25
                          : widget.navCount == 3
                              ? MediaQuery.of(context).size.width * .33
                              : MediaQuery.of(context).size.width * .5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                        ),
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
                visible: widget.navCount >= 5 ? true : false,
                child: Container(
                  height: 70,
                  width: widget.navCount == 5
                      ? MediaQuery.of(context).size.width * .2
                      : widget.navCount == 4
                          ? MediaQuery.of(context).size.width * .25
                          : widget.navCount == 3
                              ? MediaQuery.of(context).size.width * .33
                              : MediaQuery.of(context).size.width * .5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                        ),
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
