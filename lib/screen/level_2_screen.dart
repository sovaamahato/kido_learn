import 'package:flutter/material.dart';
import 'package:kido_learn/components/level2_ko_compo/data.dart';

class Level2Screen extends StatefulWidget {
  const Level2Screen({super.key});

  @override
  State<Level2Screen> createState() => _Level2ScreenState();
}

class _Level2ScreenState extends State<Level2Screen> {
  List<bool> _isDone = [false, false];
  List<bool> elementState = [false, false];
   double itemSIze=60;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Level 2"),
        ),
        body: Center(
          child: Column(children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.amber,
              child: Wrap(
                  children: itemList
                      .map((item) => DragTarget(builder: (BuildContext context,
                              List incoming, List rejected) {
                            return _isDone[itemList.indexOf(item)]
                                ? Container(
                                  height: itemSIze,
                                  width: itemSIze,
                                child: Image.asset(item.address),
                                )
                                : Container(
                                  height: itemSIze,
                                  width: itemSIze,
                                  color: Colors.black,
                                child: Image.asset(item.address),


                                );
                          }))
                      .toList()),
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: const Color.fromARGB(255, 83, 69, 27),
            ),
          ]),
        ),
      ),
    );
  }
}
