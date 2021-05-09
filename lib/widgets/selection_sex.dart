import 'package:flutter/material.dart';

class SelectionSex extends StatefulWidget {
  @override
  __SelectionSexState createState() => __SelectionSexState();
}

class __SelectionSexState extends State<SelectionSex> {
  bool stateMale = false;
  bool stateFemale = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sex',
          style: TextStyle(
            color: Colors.purple[700],
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          children: [
            Switch(
              value: stateMale,
              onChanged: (value) {
                print(value);
                setState(() {});
                if (stateFemale == true) {
                  stateFemale = false;
                  stateMale = true;
                } else {
                  stateMale = value;
                }
              },
              activeColor: Colors.purple,
            ),
            Text('Male'),
            SizedBox(width: 30),
            Switch(
              value: stateFemale,
              onChanged: (value) {
                setState(() {});
                if (stateMale == true) {
                  stateMale = false;
                  stateFemale = true;
                } else {
                  stateFemale = value;
                }
              },
              activeColor: Colors.purple,
            ),
            Text('Female'),
          ],
        ),
      ],
    );
  }
}
