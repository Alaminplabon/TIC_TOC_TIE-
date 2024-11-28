import 'package:flutter/material.dart';
import 'package:tic_tac_toe/enums/game_state_enum.dart';

import 'enums/box_state.dart';
import 'widgets/box_state_icon.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isCrossTurn = false;
  GameStateEnum gamestate = GameStateEnum.gameNotFinished;

  BoxState a = BoxState.empty;

  BoxState b = BoxState.empty;

  BoxState c = BoxState.empty;

  BoxState d = BoxState.empty;

  BoxState e = BoxState.empty;

  BoxState f = BoxState.empty;

  BoxState g = BoxState.empty;

  BoxState h = BoxState.empty;

  BoxState i = BoxState.empty;

  void reSet() {
    setState(() {
      a = BoxState.empty;
      b = BoxState.empty;
      c = BoxState.empty;
      d = BoxState.empty;
      e = BoxState.empty;
      f = BoxState.empty;
      g = BoxState.empty;
      h = BoxState.empty;
      i = BoxState.empty;

      gamestate = GameStateEnum.gameNotFinished;
    });
  }

     void gameScore() {
    if (a == b && b == c && a != BoxState.empty) {
      if (a == BoxState.circle) {
        gamestate = GameStateEnum.circleWin;
      } else {
        gamestate = GameStateEnum.crossWin;
      }
    } else {
      gamestate = GameStateEnum.gameDraw;
    }
//secont
    if (d == e && e == f && d != BoxState.empty) {
      if (d == BoxState.circle) {
        gamestate = GameStateEnum.circleWin;
      } else {
        gamestate = GameStateEnum.crossWin;
      }
    } else {
      gamestate = GameStateEnum.gameDraw;
    }
//third
    if (g == h && h == i && g != BoxState.empty) {
      if (g == BoxState.circle) {
        gamestate = GameStateEnum.circleWin;
      } else {
        gamestate = GameStateEnum.crossWin;
      }
    } else {
      gamestate = GameStateEnum.gameDraw;
    }
    //cross
    if (a == e && e == i && a != BoxState.empty) {
      if (a == BoxState.circle) {
        gamestate = GameStateEnum.circleWin;
      } else {
        gamestate = GameStateEnum.crossWin;
      }
    } else {
      gamestate = GameStateEnum.gameDraw;
    }
    //cross second
    if (c == e && e == g && c != BoxState.empty) {
      if (c == BoxState.circle) {
        gamestate = GameStateEnum.circleWin;
      } else {
        gamestate = GameStateEnum.crossWin;
      }
    } else {
      gamestate = GameStateEnum.gameDraw;
    }
    //column 1
    if (a == d && d == g && a != BoxState.empty) {
      if (a == BoxState.circle) {
        gamestate = GameStateEnum.circleWin;
      } else {
        gamestate = GameStateEnum.crossWin;
      }
    } else {
      gamestate = GameStateEnum.gameDraw;
    }
    //column 2
    if (b == e && e == h && b != BoxState.empty) {
      if (b == BoxState.circle) {
        gamestate = GameStateEnum.circleWin;
      } else {
        gamestate = GameStateEnum.crossWin;
      }
    } else {
      gamestate = GameStateEnum.gameDraw;
    }
    //column 3
    if (c == f && f == i && c != BoxState.empty) {
      if (c == BoxState.circle) {
        gamestate = GameStateEnum.circleWin;
      } else {
        gamestate = GameStateEnum.crossWin;
      }
    } else {
      gamestate = GameStateEnum.gameDraw;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: const Text('TIC TAC TOI')),
            backgroundColor: Colors.blueGrey,
          ),
          body: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        "TURN : ${isCrossTurn ? "X" : "0"}",
                        style: TextStyle(
                          fontSize: 44.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 6.0,
                      mainAxisSpacing: 6.0,
                      children: [
                        //frist
                        InkWell(
                          onTap: () {
                            print("tab");
                            setState(() {
                              if (a == BoxState.empty) {
                                if (isCrossTurn) {
                                  a = BoxState.cross;
                                } else {
                                  a = BoxState.circle;
                                }
                                isCrossTurn = !isCrossTurn;
                                gameScore();
                              }
                            });
                          },
                          child: Container(
                            color: Colors.blueAccent,
                            child: BoxStateIcon(boxicon: a),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("tab");
                            setState(() {
                              if (b == BoxState.empty) {
                                if (isCrossTurn) {
                                  b = BoxState.cross;
                                } else {
                                  b = BoxState.circle;
                                }
                                isCrossTurn = !isCrossTurn;
                                gameScore();
                              }
                            });
                          },
                          child: Container(
                            color: Colors.blueAccent,
                            child: BoxStateIcon(boxicon: b),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("tab");
                            setState(() {
                              if (c == BoxState.empty) {
                                if (isCrossTurn) {
                                  c = BoxState.cross;
                                } else {
                                  c = BoxState.circle;
                                }
                                isCrossTurn = !isCrossTurn;
                                gameScore();
                              }
                            });
                          },
                          child: Container(
                            color: Colors.blueAccent,
                            child: BoxStateIcon(boxicon: c),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("tab");
                            setState(() {
                              if (d == BoxState.empty) {
                                if (isCrossTurn) {
                                  d = BoxState.cross;
                                } else {
                                  d = BoxState.circle;
                                }
                                isCrossTurn = !isCrossTurn;
                                gameScore();
                              }
                            });
                          },
                          child: Container(
                            color: Colors.blueAccent,
                            child: BoxStateIcon(boxicon: d),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("tab");
                            setState(() {
                              if (e == BoxState.empty) {
                                if (isCrossTurn) {
                                  e = BoxState.cross;
                                } else {
                                  e = BoxState.circle;
                                }
                                isCrossTurn = !isCrossTurn;
                                gameScore();
                              }
                            });
                          },
                          child: Container(
                            color: Colors.blueAccent,
                            child: BoxStateIcon(boxicon: e),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("tab");
                            setState(() {
                              if (f == BoxState.empty) {
                                if (isCrossTurn) {
                                  f = BoxState.cross;
                                } else {
                                  f = BoxState.circle;
                                }
                                isCrossTurn = !isCrossTurn;
                                gameScore();
                              }
                            });
                          },
                          child: Container(
                            color: Colors.blueAccent,
                            child: BoxStateIcon(boxicon: f),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("tab");
                            setState(() {
                              if (g == BoxState.empty) {
                                if (isCrossTurn) {
                                  g = BoxState.cross;
                                } else {
                                  g = BoxState.circle;
                                }
                                isCrossTurn = !isCrossTurn;
                                gameScore();
                              }
                            });
                          },
                          child: Container(
                            color: Colors.blueAccent,
                            child: BoxStateIcon(boxicon: g),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("tab");
                            setState(() {
                              if (h == BoxState.empty) {
                                if (isCrossTurn) {
                                  h = BoxState.cross;
                                } else {
                                  h = BoxState.circle;
                                }
                                isCrossTurn = !isCrossTurn;
                                gameScore();
                              }
                            });
                          },
                          child: Container(
                            color: Colors.blueAccent,
                            child: BoxStateIcon(boxicon: h),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("tab");
                            setState(() {
                              if (i == BoxState.empty) {
                                if (isCrossTurn) {
                                  i = BoxState.cross;
                                } else {
                                  i = BoxState.circle;
                                }
                                isCrossTurn = !isCrossTurn;
                                gameScore();
                              }
                            });
                          },
                          child: Container(
                            color: Colors.blueAccent,
                            child: BoxStateIcon(boxicon: i),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              gamestate != GameStateEnum.gameNotFinished
                  ? Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.greenAccent.withOpacity(0.9),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            gamestate != GameStateEnum.gameDraw
                                ? Text(
                                    "${gamestate == GameStateEnum.circleWin ? "0 " : "X "} WON",
                                    style: TextStyle(
                                      fontSize: 44.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                : Text("Game is Draw "),
                            ElevatedButton(
                                onPressed: () => reSet(),
                                child: Text("AGAIN.!"))
                          ],
                        ),
                      ),
                    )
                  : Container(),
            ],
          )),
    );
  }
}
