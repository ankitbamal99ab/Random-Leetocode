import 'package:flutter/material.dart';

import 'dart:math';

/*
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Leetcode Random Number"),
            backgroundColor: Colors.redAccent,
          ),
    )
    );
  }
}
*/



/*
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

   var num;
  void  generateRandomNumber() {
    var random = new Random();

    // Printing Random Number between 1 to 100 on Terminal Window.
    print(random.nextInt(100));

            setState(() {
          num=random.nextInt(1400);
        });
    Text("Ankit ");
    Container(
      width: 100,
      height: 100,
      color: Colors.red,
      child: Text(num.toString()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        color: Colors.redAccent,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Random Leetcode Questions"),
            backgroundColor: Colors.red,
          ),
            body: Center(
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        color: Colors.redAccent,
                        width: 400,
                        height: 480,
                        child: Center(child: Text(num.toString())),
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child:
                          RaisedButton(
                            onPressed: () => generateRandomNumber(),
                            child: Text('Click Here'),
                            textColor: Colors.white,
                            color: Colors.redAccent,
                            padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                          ),
                      ),
                    ])
            )
        )
    );
  }
}
*/

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// boilerplate code
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LeetCode Question',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('LeetCode Question'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

// widget class
class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

// state class
// We will replace this class in each of the examples below
class _MyWidgetState extends State<MyWidget> {

  // state variable
  String _textString = 'Hello Ankit';

  // The State class must include this method, which builds the widget
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(45.0),
            child: Text(
              _textString,
              style: TextStyle(fontSize: 96),
            ),
          ),
        ),
        SizedBox(
          height: 80,
        ),
        RaisedButton( //                         <--- Button
          color: Colors.redAccent,
          child: Text('Button'),
          onPressed: () {
            _doSomething();
          },
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              child: Text("मैं  बहानो  में  विश्वास  नहीं  करता . मैं  जीवन  की  समस्याओं  को \nसुलझाने  के  लिए  कठिन  परिश्रम  को  प्रमुख  कारक  मानता  हूँ "),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              child: Text("ममेरा  विचार  है  कि  मुझे  जो भी  सफलता  मिली  है  उसके  पीछे  \nजो  मेरी  सबसे  बड़ी  विशेषता  रही  है  वो  है  कठिन  परिश्रम .सचमुच ,\n कठिन  परिश्रम  का  कोई  विकल्प   नहीं  है . "),
            ),
          ),
        )
      ],
    );
  }

  // this private method is run whenever the button is pressed
  void _doSomething() {
    // Using the callback State.setState() is the only way to get the build
    // method to rerun with the updated state value.
    var random = new Random();
    int num =random.nextInt(1000);
    setState(() {
      _textString = num.toString();
    });
  }
}