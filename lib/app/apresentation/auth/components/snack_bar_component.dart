import 'package:flutter/material.dart';

SnackBar snackBarWithFailureMessage(String message) {
  return SnackBar(
    content: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.info_outline,
          color: Colors.red,
          size: 24,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            message,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ],
    ),
    backgroundColor: Color(0xFF2c3956),
    duration: Duration(seconds: 3),
  );
}
