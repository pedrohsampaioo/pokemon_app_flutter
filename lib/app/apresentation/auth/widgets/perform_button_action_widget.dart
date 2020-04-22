import 'package:flutter/material.dart';

class PerformButtonActionWidget extends StatelessWidget {
  final String text;
  final Function action;
  final bool isSubmitting;

  const PerformButtonActionWidget({
    Key key,
    @required this.text,
    @required this.action,
    @required this.isSubmitting,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 5,
      disabledTextColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 8,
        ),
        child: isSubmitting
            ? CircularProgressIndicator(
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                
              )
            : Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
      ),
      disabledColor: Color(0xFFd684a6),
      color: Color(0xFFd684a6),
      onPressed: isSubmitting ? null : action,
    );
  }
}
