import 'package:flutter/material.dart';

import 'icon_style.dart';

class TextBox extends StatelessWidget {
  final String label;
  final String text;
  final IconData icon;
  final TextInputType textType;

  const TextBox(this.text, this.label, this.icon, {this.textType});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 6),
            child: Text(
              '$label',
              style: TextStyle(
                color: Colors.purple[700],
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: '$text',
              prefixIcon: IconStyle(icon),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
              ),
            ),
            keyboardType: textType,
          ),
        ],
      ),
    );
  }
}
