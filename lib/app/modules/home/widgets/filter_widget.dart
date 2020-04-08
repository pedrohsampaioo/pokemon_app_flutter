import 'package:flutter/material.dart';

class FilterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xFF0d3663),
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFeeeff5),
            offset: Offset(0, 0),
            blurRadius: 24,
            spreadRadius: 10,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Flexible(
            flex: 6,
            child: Text(
              "Filter",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: SizedBox(width: 2.0),
          ),
          Flexible(
            flex: 2,
            child: CircleAvatar(
              maxRadius: 10,
              child: Text(
                "0",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Color(
                    0xFF7c7f83,
                  ),
                ),
              ),
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
