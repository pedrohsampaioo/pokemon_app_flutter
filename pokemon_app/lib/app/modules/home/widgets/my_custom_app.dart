import 'package:flutter/material.dart';

class MyCustomApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(70.0),
      child: SafeArea(
        child: Container(
          height: 70.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 16.0,
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 10.0,
                  bottom: 12.0,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  size: 20.0,
                  color: Color(0xFFd1d0d0),
                ),
                labelText: "Find a pokemon",
                labelStyle: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Color(
                    0xFFd1d0d0,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    color: Color(0xFFd1d0d0),
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    color: Color(0xFFd1d0d0),
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    color: Color(0xFFd1d0d0),
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
