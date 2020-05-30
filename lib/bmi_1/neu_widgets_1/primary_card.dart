import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class PrimaryCardWidget extends StatelessWidget {
  //final string title;
  final Color color;
  final Widget cardChild;
  PrimaryCardWidget({@required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: color,
        boxShadow: [
          BoxShadow(
              color: Colors.grey[600],
              offset: Offset(4.0, 4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0),
          BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.grey[200],
            Colors.grey[300],
            Colors.grey[400],
            Colors.grey[500],
          ],
          stops: [0.1, 0.3, 0.8, 1],
        ),
      ),
    );
  }
}

class PrimaryCardTapped extends StatelessWidget {
  final Color color;
  final IconData icon;
  final Widget cardChild;
  PrimaryCardTapped({@required this.color, this.cardChild, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Container(
        padding: EdgeInsets.all(5),
        child: Container(
          padding: EdgeInsets.all(20),
          //child: cardChild,
          // child: Icon(
          //   icon,
          //   size: 35,
          //   color: Colors.grey[700],
          // ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.grey[600],
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey[700],
                Colors.grey[600],
                Colors.grey[500],
                Colors.grey[200],
              ],
              stops: [0, 0.1, 0.3, 1],
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.grey[300],
          boxShadow: [
            BoxShadow(
                color: Colors.grey[600],
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.grey[200],
              Colors.grey[300],
              Colors.grey[400],
              Colors.grey[500],
            ],
            stops: [0.1, 0.3, 0.8, 1],
          ),
        ),
      ),
    );
  }
}
