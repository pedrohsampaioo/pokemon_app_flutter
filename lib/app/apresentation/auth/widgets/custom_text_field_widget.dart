import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatefulWidget {
  final String hintText;
  final IconData prefixIcon;
  final bool obscureText;

  CustomTextFieldWidget({
    Key key,
    @required this.hintText,
    @required this.prefixIcon,
    this.obscureText = false,
  }) : super(key: key);

  @override
  _CustomTextFieldWidgetState createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  bool _showIconHandleWithObscureText;
  bool _obscureText;

  @override
  void initState() {
    super.initState();
    _showIconHandleWithObscureText = widget.obscureText;
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: Color(0xFF2c3956),
          width: 2,
        ),
      ),
      child: TextFormField(
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        obscureText: _obscureText,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          contentPadding: EdgeInsets.only(right: _obscureText ? 0 : 8),
          suffixIcon: _showIconHandleWithObscureText
              ? GestureDetector(
                  child: Icon(
                    Icons.remove_red_eye,
                    color: _obscureText ? Color(0xFF2c3956) : Color(0xFF9fa1ab),
                    size: 24,
                  ),
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
          prefixIcon: Icon(
            widget.prefixIcon,
            color: Color(0xFF2c3956),
            size: 24,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
