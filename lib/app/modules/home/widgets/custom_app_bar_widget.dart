import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 32.0,
        ),
        height: 60.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
            color: Colors.white,
            child: GestureDetector(
              child: Icon(
                Icons.search,
                color: Color(0xFF304661),
                size: 24.0,
              ),
              onTap: () {},
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.0);
}
