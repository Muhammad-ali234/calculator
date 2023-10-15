import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final textfieldConntroller = TextEditingController();

  late List<String> parts;
  String combinedString = "";
  double operand1 = 0;
  double operand2 = 0;
  double result = 0;
  double previousResult = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 80),
                child: TextField(
                  controller: textfieldConntroller,
                  textDirection: TextDirection.ltr,
                  style: const TextStyle(
                      color: Colors.white, fontSize: 25), // Text color
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ButtonWideget(
                        color: const Color.fromARGB(255, 228, 179, 34),
                        textData: 'AC',
                        onPressed: () {
                          setState(() {
                            textfieldConntroller.clear();
                            result = 0;
                            combinedString = "";
                            operand1 = 0;
                            operand2 = 0;
                            result = 0;
                          });
                        },
                      ),
                      ButtonWideget(
                        color: Colors.amber,
                        textData: 'x',
                        onPressed: () {
                          setState(() {
                            combinedString += '*';
                            textfieldConntroller.text =
                                combinedString.toString();
                          });
                        },
                      ),
                      ButtonWideget(
                        color: Colors.amber,
                        textData: '/',
                        onPressed: () {
                          setState(() {
                            combinedString += '/';
                            textfieldConntroller.text =
                                combinedString.toString();
                          });
                        },
                      ),
                      ButtonWideget(
                        color: Colors.amber,
                        textData: '<-',
                        onPressed: () {
                          setState(() {
                            if (combinedString.isNotEmpty) {
                              combinedString = combinedString.substring(
                                  0, combinedString.length - 1);
                              textfieldConntroller.text = combinedString;
                            }
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ButtonWideget(
                        color: const Color.fromARGB(255, 216, 208, 208),
                        textData: '1',
                        onPressed: () {
                          setState(() {
                            combinedString += '1';
                            textfieldConntroller.text =
                                combinedString.toString();
                          });
                        },
                      ),
                      ButtonWideget(
                        color: const Color.fromARGB(255, 216, 208, 208),
                        textData: '2',
                        onPressed: () {
                          setState(() {
                            combinedString += '2';
                            textfieldConntroller.text =
                                combinedString.toString();
                          });
                        },
                      ),
                      ButtonWideget(
                        color: const Color.fromARGB(255, 216, 208, 208),
                        textData: '3',
                        onPressed: () {
                          setState(() {
                            combinedString += '3';
                            textfieldConntroller.text =
                                combinedString.toString();
                          });
                        },
                      ),
                      ButtonWideget(
                        color: Colors.amber,
                        textData: '+',
                        onPressed: () {
                          setState(() {
                            combinedString += '+';
                            textfieldConntroller.text =
                                combinedString.toString();
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ButtonWideget(
                        color: const Color.fromARGB(255, 216, 208, 208),
                        textData: '4',
                        onPressed: () {
                          setState(() {
                            combinedString += '4';
                            textfieldConntroller.text =
                                combinedString.toString();
                          });
                        },
                      ),
                      ButtonWideget(
                        color: const Color.fromARGB(255, 216, 208, 208),
                        textData: '5',
                        onPressed: () {
                          setState(() {
                            combinedString += '5';
                            textfieldConntroller.text =
                                combinedString.toString();
                          });
                        },
                      ),
                      ButtonWideget(
                        color: const Color.fromARGB(255, 216, 208, 208),
                        textData: '6',
                        onPressed: () {
                          setState(() {
                            combinedString += '6';
                            textfieldConntroller.text =
                                combinedString.toString();
                          });
                        },
                      ),
                      ButtonWideget(
                        color: Colors.amber,
                        textData: '-',
                        onPressed: () {
                          setState(() {
                            combinedString += '-';
                            textfieldConntroller.text =
                                combinedString.toString();
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ButtonWideget(
                        color: const Color.fromARGB(255, 216, 208, 208),
                        textData: '7',
                        onPressed: () {
                          setState(() {
                            combinedString += '7';
                            textfieldConntroller.text =
                                combinedString.toString();
                          });
                        },
                      ),
                      ButtonWideget(
                        color: const Color.fromARGB(255, 216, 208, 208),
                        textData: '8',
                        onPressed: () {
                          setState(() {
                            combinedString += '8';
                            textfieldConntroller.text =
                                combinedString.toString();
                          });
                        },
                      ),
                      ButtonWideget(
                        color: const Color.fromARGB(255, 216, 208, 208),
                        textData: '9',
                        onPressed: () {
                          setState(() {
                            combinedString += '9';
                            textfieldConntroller.text =
                                combinedString.toString();
                          });
                        },
                      ),
                      ButtonWideget(
                        color: Colors.amber,
                        textData: '%',
                        onPressed: () {
                          setState(() {
                            combinedString += '%';
                            textfieldConntroller.text =
                                combinedString.toString();
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ButtonWideget(
                        color: Colors.amber,
                        textData: '0',
                        width: 230,
                        onPressed: () {
                          setState(() {
                            combinedString += '0';
                            textfieldConntroller.text =
                                combinedString.toString();
                          });
                        },
                      ),
                      ButtonWideget(
                        color: Colors.amber,
                        textData: '=',
                        onPressed: () {
                          setState(() {
                            if (isValidExpression(combinedString)) {
                              if (combinedString.contains('*')) {
                                parts = combinedString.split('*');
                                operand1 = double.parse(parts[0]);
                                operand2 = double.parse(parts[1]);
                                result = operand1 * operand2;
                              } else if (combinedString.contains('+')) {
                                parts = combinedString.split('+');
                                operand1 = double.parse(parts[0]);
                                operand2 = double.parse(parts[1]);
                                result = operand1 + operand2;
                              } else if (combinedString.contains('-')) {
                                parts = combinedString.split('-');
                                operand1 = double.parse(parts[0]);
                                operand2 = double.parse(parts[1]);
                                result = operand1 - operand2;
                              } else if (combinedString.contains('/')) {
                                parts = combinedString.split('/');
                                operand1 = double.parse(parts[0]);
                                operand2 = double.parse(parts[1]);
                                result = operand1 / operand2;
                              }
                              else if (combinedString.contains('%')) {
                                parts = combinedString.split('%');
                                operand1 = double.parse(parts[0]);
                                try {
                                  operand2 = parts.length > 1
                                      ? double.parse(parts[1])
                                      : 0;
                                  if (operand2 != 0) {
                                    result = operand1 % operand2;
                                    if (result % 1 == 0) {
                                      textfieldConntroller.text =
                                          result.toInt().toString();
                                    } else {
                                      textfieldConntroller.text =
                                          result.toString();
                                    }
                                  } else {
                                    textfieldConntroller.text =
                                        "Error"; 
                                  }
                                  combinedString = result.toString();
                                } catch (e) {  
                                  textfieldConntroller.text =
                                      "Error"; 
                                }
                              }
                              textfieldConntroller.text = result.toString();
                              previousResult = result;
                              combinedString = result.toString();
                              result = 0;
                            } else {
                              textfieldConntroller.text =
                                  previousResult.toString();
                            }
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}

bool isValidExpression(String expression) {
  return expression.isNotEmpty &&
      !"+-*/".contains(expression.substring(expression.length - 1));
}

class ButtonWideget extends StatelessWidget {
  final String textData;
  final Color color;
  final Function onPressed;
  final double? width;
  const ButtonWideget({
    super.key,
    required this.color,
    required this.textData,
    required this.onPressed,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
        height: 70,
        width: width ?? 70,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            textData,
            textScaleFactor: 3,
          ),
        ),
      ),
    );
  }
}
