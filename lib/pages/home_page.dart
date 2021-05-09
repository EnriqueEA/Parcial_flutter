import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:parcial_flutter/widgets/caja_fecha.dart';
import 'package:parcial_flutter/widgets/selection_sex.dart';

import 'package:parcial_flutter/widgets/text_box.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(elevation: 0),
        body: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              _Background(),
              _LogoPerfil(),
            ],
          ),
        ),
      ),
    );
  }
}

class _FormContent extends StatelessWidget {
  const _FormContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          TextBox(
            'Enter User Name',
            'User Name',
            FontAwesomeIcons.user,
          ),
          TextBox(
            'Enter Email',
            'Email Id',
            Icons.email_rounded,
            textType: TextInputType.emailAddress,
          ),
          TextBox(
            'Enter your 10 digit mobile number',
            'Mobile Number',
            FontAwesomeIcons.mobile,
            textType: TextInputType.phone,
          ),
          CajaFecha(),
          SelectionSex(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [Colors.purple[500], Colors.deepPurple[600]],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [0.0, 1.0],
                    ),
                  ),
                  child: Text(
                    'SAVE',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'User profile'.toUpperCase(),
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
              ),
            ],
          ),
          _FormContent(),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 5,
          ),
        ],
      ),
    );
  }
}

class _LogoPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Column(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/logo.jpg'),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Lacey Fernandez',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(width: 15),
                    Container(
                      padding: EdgeInsets.fromLTRB(8, 6, 6, 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: FaIcon(
                        FontAwesomeIcons.solidEdit,
                        color: Colors.blueGrey[200],
                        size: 18,
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 2, left: 90),
              padding: EdgeInsets.fromLTRB(8, 6, 6, 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: FaIcon(
                FontAwesomeIcons.solidImage,
                color: Colors.grey[600],
                size: 24,
              ),
            ),
          ],
          alignment: Alignment.topCenter,
        ),
        Container(
          margin: EdgeInsets.only(top: 22, bottom: 25),
          child: _Form(),
        ),
      ],
    );
  }
}

class _Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.pink[600], Colors.deepPurple[600]],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 1.0],
              ),
            ),
            height: 300,
          ),
        ),
      ],
    );
  }
}
