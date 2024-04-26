import 'package:flutter/material.dart';

class CustomFloatingActionButton {
  Widget customFloatingActionButton(
      {required VoidCallback onPress,
      required var icon,
      var backgroundColor,
      var iconColor,
      required double iconSize}) {
    return FloatingActionButton(
      onPressed: onPress,
      backgroundColor: backgroundColor,
      splashColor: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
