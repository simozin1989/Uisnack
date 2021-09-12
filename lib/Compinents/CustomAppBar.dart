import 'package:appweb/Constant.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  int sizeHorizontal = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size.width);

    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(46),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -2),
              blurRadius: 3,
              color: Colors.black.withOpacity(0.16),
            )
          ]),
      child: Row(
        children: [
          Image.asset(
            'images/logo.png',
            height: 25,
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 5),
          Text(
            'Foodi'.toUpperCase(),
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          _menuItem('Home', () {}),
          _menuItem('About', () {}),
          _menuItem('Pricing', () {}),
          _menuItem('Contact', () {}),
          _menuItem('Login', () {}),
        ],
      ),
    );
  }

  _menuItem(title, Function pas) {
    return InkWell(
      onTap: pas,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal:  9),
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
              fontWeight: FontWeight.bold, color: kTextcolor.withOpacity(0.3),fontSize: 13),
        ),
      ),
    );
  }
}
