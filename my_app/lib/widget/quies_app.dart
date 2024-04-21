// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

class QuizeWidget extends StatefulWidget {
  const QuizeWidget({super.key});

  @override
  State<QuizeWidget> createState() => _QuizeWidgetState();
}

class _QuizeWidgetState extends State<QuizeWidget> {
  List<Icon> isAnswerIcon = [];
  int processingStep = 0;

  void UpdateState(String option) {
    processingStep++;
    if (option == 'yes') {
      isAnswerIcon.add(
        Icon(
          Icons.check,
          color: Colors.blue,
        ),
      );
    }
    if (option == 'no') {
      isAnswerIcon.add(
        Icon(
          Icons.cancel_outlined,
          color: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
            flex: 5,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.all(10),
              height: 100.0,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 247, 247, 247)),
              child: Row(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Question Number 1:',
                        style: TextStyle(fontSize: 24, color: Colors.amber),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Flexible(
                              child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Text(
                                "Flutter developers often need to customize the text to fit in with the aesthetics of an application. For instance, you may need to fit the text widget inside a specific width and control the font size to make your text look appealing. Here's an example:Flutter developers often need to customize the text to fit in with the aesthetics of an application. For instance, you may need to fit the text widget inside a specific width and control the font size to make your text look appealing. Here's an example:"),
                          ))),
                    ],
                  )
                ],
              ),
            )),
        Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  UpdateState('yes');
                });
              },
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 253, 253, 253)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 40,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                            Text(
                              "Yes, It is Correct ",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.amber),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  UpdateState('no');
                });
              },
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 253, 253, 253)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20)),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 40,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.cancel,
                              color: Colors.white,
                            ),
                            Text(
                              "No, It is not ",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
        Expanded(
          child: Row(children: isAnswerIcon),
        )
      ],
    );
  }
}
