import 'package:flutter/material.dart';

class SortWidget extends StatelessWidget {
  final Function action;

  const SortWidget({
    @required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
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
      child: InkWell(
        onTap: action,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Icon(
                Icons.short_text,
                color: Color(0xFF0d3663),
                size: 20,
              ),
            ),
            Flexible(
              flex: 1,
              child: SizedBox(width: 4.0),
            ),
            Flexible(
              flex: 3,
              child: Text(
                "Sort",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xFF0d3663),
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
