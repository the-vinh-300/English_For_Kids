import 'dart:async';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Game1 extends StatefulWidget {
  const Game1({super.key});

  @override
  State<Game1> createState() => _Game1State();
}

class _Game1State extends State<Game1> {
  int _previousIndex = -1;
  bool _flip = false;
  bool _start = false;
  bool _wait = false;

  late Timer _timer;
  int _time = 5;
  late int _left;
  late bool _isFinished;
  late List<String> _data;
  late List<bool> _cardFlips;

  Widget getItem(int index) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey,
          boxShadow: const [
            BoxShadow(
                color: Colors.black45,
                blurRadius: 3,
                spreadRadius: 0.8,
                offset: Offset(2.0, 1))
          ],
          borderRadius: BorderRadius.circular(5)),
      margin: EdgeInsets.all(0.4),
      child: Image.asset(_data[index]),
    );
  }

  startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _time = _time - 1;
      });
    });
  }

  void reStart() {
    startTimer();
    _time = 5;
    _left = (_data.length ~/ 2);
    _isFinished = false;
    Future.delayed(const Duration(seconds: 6), () {
      setState(() {
        _start = true;
        _timer.cancel();
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _isFinished
        ? Scaffold(
            body: GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                width: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25)),
                child: Text('Replay'),
              ),
            ),
          )
        : Scaffold(
            body: SafeArea(
                child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: _time > 0 ? Text("$_time") : Text("Left :$_left"),
                ),
                GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (context, index) => _start
                        ? FlipCard(
                            onFlip: () {
                              if (!_flip) {
                                _flip = true;
                                _previousIndex = index;
                              } else {
                                _flip = true;
                                if (_previousIndex != _previousIndex) {
                                  if (_data[_previousIndex] != _data[index]) {
                                    _wait = true;
                                    Future.delayed(
                                        const Duration(milliseconds: 1500),
                                        () {});
                                  }
                                }
                                ;
                              }
                            },
                            front: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black45,
                                        blurRadius: 3,
                                        offset: Offset(2, 1))
                                  ]),
                              margin: EdgeInsets.all(4.0),
                              child: Image.asset("name"),
                            ),
                            back: getItem(index))
                        : getItem(index))
              ],
            )),
          );
  }
}
