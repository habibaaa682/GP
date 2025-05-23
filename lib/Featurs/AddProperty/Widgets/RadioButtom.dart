import 'package:deyarakapp/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Radio_ extends StatefulWidget {
  Radio_({super.key, required this.text,   required this.textEditingController});

  final String text;
  TextEditingController textEditingController;

  @override
  State<Radio_> createState() => _RadioState();
}

Color colorYes = Colors.white;
Color colorNo = Colors.white;



class _RadioState extends State<Radio_> with AutomaticKeepAliveClientMixin {


  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              widget.text,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        colorYes = kprimarycolor;
                        colorNo = Colors.white;
                        widget.textEditingController.text = 'true';
                       // print(widget.text+widget.textEditingController.text );
                      });
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: kprimarycolor,
                          width: 3,
                        ),
                        color: colorYes,
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        colorYes = kprimarycolor;
                        colorNo = Colors.white;
                        widget.textEditingController.text = 'true';
                        //print(widget.text+widget.textEditingController.text );
                      });
                    },
                    child: const Text(
                      'Yes',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        colorNo = kprimarycolor;
                        colorYes = Colors.white;
                        widget.textEditingController.text = 'false';
                   //     print(widget.text+widget.textEditingController.text );
                      });
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: colorNo,
                        border: Border.all(
                          color: kprimarycolor,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        colorNo = kprimarycolor;
                        colorYes = Colors.white;
                        widget.textEditingController.text = 'false';
                      //  print(widget.text+widget.textEditingController.text );
                      });
                    },
                    child: const Text(
                      'No',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}