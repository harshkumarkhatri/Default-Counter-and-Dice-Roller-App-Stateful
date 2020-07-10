import 'package:default_counter_app_stateless/main.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _counter = 0;
  bool isSelected=false;
  void increment() => setState(
        () {
          _counter += 1;
        },
      );
  void decrement() => setState(
        () {
          _counter = _counter - 1;
        },
      );
  void randomGen()=>setState(
      (){
        Random random=new Random();
        _counter=random.nextInt(6)+1;
      },
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedDefaultTextStyle(
              style: isSelected?TextStyle(
                fontSize: 50,color: Colors.red,fontWeight: FontWeight.bold,
              ):TextStyle(
                fontSize: 24,fontWeight:FontWeight.w100,color: Colors.amber,
              ),
              duration: const Duration(milliseconds: 200),
              child:Text(
                "$_counter",
                style: TextStyle(fontSize: 80),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () {
                    increment();
                  },
                  child: Icon(Icons.add),
                  tooltip: "Increment",
                ),
                SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  onPressed: () {
                    decrement();
                  },
                  child: Icon(Icons.remove),
                  tooltip: 'Decrement',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      isSelected=!isSelected;
                    });
                    randomGen();
                  },
                  child: Icon(Icons.adjust),
                  tooltip: "Random Number",
                ),
              ],
            )
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}
