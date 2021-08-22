import 'package:calculator/calc_button.dart';
import 'package:calculator/calc_logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CalcScreen extends StatefulWidget {
  const CalcScreen({Key? key}) : super(key: key);

  @override
  _CalcScreenState createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  CalcLogic calc = CalcLogic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEBEC),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Text(
                calc.equation,
                style: TextStyle(
                  fontSize: calc.equationFontSize,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
              child: Text(
                calc.result,
                style: TextStyle(fontSize: calc.resultFontSize),
              ),
            ),
            Expanded(
                child: Divider(
              color: Color(0xffEDEBEC),
            )),
            Expanded(
              flex: 1,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CalcButton(
                      textColor: Colors.red,
                      buttonText: "AC",
                      boxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed('AC');
                        });
                      },
                    ),
                    CalcButton(
                      buttonText: "⌫",
                      boxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed("c");
                        });
                      },
                    ),
                    CalcButton(
                      buttonText: "%",
                      boxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed("%");
                        });
                      },
                    ),
                    CalcButton(
                      textColor: Colors.orange,
                      buttonText: "÷",
                      boxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed("/");
                        });
                      },
                    ),
                  ]),
            ),
            Expanded(
              flex: 1,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      buttonText: "9",
                      boxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed("9");
                        });
                      },
                    ),
                    CalcButton(
                      buttonText: "8",
                      boxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed("8");
                        });
                      },
                    ),
                    CalcButton(
                      buttonText: "7",
                      boxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed("7");
                        });
                      },
                    ),
                    CalcButton(
                      textColor: Colors.orange,
                      buttonText: "×",
                      boxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed("*");
                        });
                      },
                    ),
                  ]),
            ),
            Expanded(
              flex: 1,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      buttonText: "6",
                      boxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed("6");
                        });
                      },
                    ),
                    CalcButton(
                      buttonText: "5",
                      boxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed("5");
                        });
                      },
                    ),
                    CalcButton(
                      buttonText: "4",
                      boxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed("4");
                        });
                      },
                    ),
                    CalcButton(
                      textColor: Colors.orange,
                      buttonText: "-",
                      boxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed("-");
                        });
                      },
                    ),
                  ]),
            ),
            Expanded(
              flex: 1,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      buttonText: "3",
                      boxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed("3");
                        });
                      },
                    ),
                    CalcButton(
                      buttonText: "2",
                      boxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed("2");
                        });
                      },
                    ),
                    CalcButton(
                      buttonText: "1",
                      boxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed("1");
                        });
                      },
                    ),
                    CalcButton(
                      textColor: Colors.orange,
                      buttonText: "+",
                      boxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed("+");
                        });
                      },
                    ),
                  ]),
            ),
            Expanded(
              flex: 1,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      buttonText: "0",
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(45)),
                      buttonWidth: 2.8,
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed("0");
                        });
                      },
                    ),
                    CalcButton(
                      buttonText: ".",
                      boxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed(".");
                        });
                      },
                    ),
                    CalcButton(
                      textColor: Colors.orange,
                      buttonText: "=",
                      boxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed("=");
                        });
                      },
                    ),
                  ]),
            ),
          ],
        ),
      )),
    );
  }
}
