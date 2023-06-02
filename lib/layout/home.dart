import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import '../componnents/colors.dart';
import '../componnents/reusable_component.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String input = 'Enter new Operation';
  bool isStarting = false;
  double finalResult = 0.0;
  String res = "result = ";
  String lastOperation = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue_1000,
      appBar: AppBar(
        title:const Text('Basic Calculator'),
        backgroundColor: keyColorOrange_100,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
              height: 100,
              width: double.infinity,
              padding: EdgeInsetsDirectional.all(20.0),
              margin: EdgeInsetsDirectional.symmetric(
                  vertical: 20.0, horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: keyColorOrange_100,
              ),
              child: Center(
                child: Text(
                  '$input',
                  style: TextStyle(
                    color: buttonTextColorWhite_100,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                        child: Container(
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(start: 10.0,top: 20,bottom: 10.0),
                            child: Text(res,style: TextStyle(fontSize: 26.0,color:buttonTextColorWhite_100),),
                          ),
                          height: 80.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: keyColorOrange_100,
                          ),
                        )
                    ),
                   SizedBox(width: 15,),
                   Expanded(
                       child:defaultButton(
                           buttonName: 'AC',
                           onpressed: () {
                             setState(() {
                               input = "";
                               finalResult = 0.0;
                               isStarting = false;
                             });
                           }),
                     flex: 1,
                   ),
                  ],
                ),
                defaultHeightSpace(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    defaultButton(
                        buttonName: '7',
                        onpressed: () {
                          setState(() {
                            if (isStarting) {
                              input += '7';
                            } else {
                              isStarting = true;
                              input = '7';
                            }
                          });
                        }),
                    defaultButton(
                        buttonName: '8',
                        onpressed: () {
                          setState(() {
                            if (isStarting) {
                              input += '8';
                            } else {
                              isStarting = true;
                              input = '8';
                            }
                          });
                        }),
                    defaultButton(
                        buttonName: '9',
                        onpressed: () {
                          setState(() {
                            if (isStarting) {
                              input += '9';
                            } else {
                              isStarting = true;
                              input = '9';
                            }
                          });
                        }),
                    defaultButton(
                        buttonName: '/',
                        onpressed: () {
                          setState(() {
                            if (!isStarting) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text("err")));
                            } else
                              input += '/';
                          });
                        }),
                  ],
                ),
                defaultHeightSpace(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    defaultButton(
                        buttonName: '4',
                        onpressed: () {
                          setState(() {
                            if (isStarting) {
                              input += '4';
                            } else {
                              isStarting = true;
                              input = '4';
                            }
                          });
                        }),
                    defaultButton(
                        buttonName: '5',
                        onpressed: () {
                          setState(() {
                            if (isStarting) {
                              input += '5';
                            } else {
                              isStarting = true;
                              input = '5';
                            }
                          });
                        }),
                    defaultButton(
                        buttonName: '6',
                        onpressed: () {
                          setState(() {
                            if (isStarting) {
                              input += '6';
                            } else {
                              isStarting = true;
                              input = '6';
                            }
                          });

                        }),
                    defaultButton(
                        buttonName: '*',
                        onpressed: () {
                          setState(() {
                            if (!isStarting) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text("Enter Second Operand")));
                            } else
                              input += '*';
                          });
                        }),
                  ],
                ),
                defaultHeightSpace(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    defaultButton(
                        buttonName: '1',
                        onpressed: () {
                          setState(() {
                            if (isStarting) {
                              input += '1';
                            } else {
                              isStarting = true;
                              input = '1';
                            }
                          });
                        }),
                    defaultButton(
                        buttonName: '2',
                        onpressed: () {
                          setState(() {
                            if (isStarting) {
                              input += '2';
                            } else {
                              isStarting = true;
                              input = '2';
                            }
                          });
                        }),
                    defaultButton(
                        buttonName: '3',
                        onpressed: () {
                          setState(() {
                            if (isStarting) {
                              input += '3';
                            } else {
                              isStarting = true;
                              input = '3';
                            }
                          });
                        }),
                    defaultButton(
                        buttonName: '+',
                        onpressed: () {
                          setState(() {
                            if (!isStarting) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text("Only One Operation to calc Equation")));
                            } else
                              input += '+';

                          });
                        }),
                  ],
                ),
                defaultHeightSpace(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    defaultButton(
                        buttonName: '%',
                        onpressed: () {
                          setState(() {
                            if (!isStarting) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Only One Operation to calc mood")));
                            } else
                              input += '%';
                            lastOperation = '%';
                          });
                        }),
                    defaultButton(buttonName: '0', onpressed: () {
                      setState(() {
                        if (isStarting) {
                          input += '0';
                        } else {
                          isStarting = true;
                          input = '0';
                        }
                      });
                    }),
                    defaultButton(
                        buttonName: '=',
                        onpressed: () {
                          setState(() {
                            if (!isStarting) {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                      "Enter second operand or new equation to calc")));
                            } else
                            {
                              Parser p = Parser();
                              Expression exp = p.parse(input);
                              ContextModel cm = ContextModel();
                              finalResult = exp.evaluate(EvaluationType.REAL, cm);
                              setState(() {
                                res = "RESULT = $finalResult";
                              });
                            }
                          });
                        }),
                    defaultButton(
                        buttonName: '-',
                        onpressed: () {
                          setState(() {
                            if (!isStarting) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Only One Operation to calc Equation")));
                            } else
                              input += '-';

                          });
                        }),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
