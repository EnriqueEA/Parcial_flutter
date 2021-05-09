import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:parcial_flutter/widgets/icon_style.dart';

class CajaFecha extends StatefulWidget {
  @override
  _CajaFechaState createState() => _CajaFechaState();
}

class _CajaFechaState extends State<CajaFecha> {
  String _fecha = '';
  TextEditingController _textController = TextEditingController();

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
                'Date of Birth',
                style: TextStyle(
                  color: Colors.purple[700],
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              )),
          TextField(
            controller: _textController,
            decoration: InputDecoration(
              hintText: 'DD/MM/YYYY',
              prefixIcon: IconStyle(FontAwesomeIcons.calendarAlt),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
              ),
            ),
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
              _selectDate(context);
            },
          ),
        ],
      ),
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime date = await showDatePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime(2022),
      initialDate: DateTime.now(),
    );

    if (date != null) {
      setState(() {});
      _fecha = date.toString();
      _textController.text = _fecha;
    }
  }
}
