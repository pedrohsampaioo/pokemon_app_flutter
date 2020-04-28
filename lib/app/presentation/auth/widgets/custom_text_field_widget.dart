import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatefulWidget {
  final String hintText;
  final IconData prefixIcon;
  final bool obscureText;
  final void Function(String) onChanged;
  final String Function(String) validator;

  const CustomTextFieldWidget({
    Key key,
    @required this.hintText,
    @required this.prefixIcon,
    this.obscureText = false,
    @required this.onChanged,
    @required this.validator,
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
    return TextFormField(
      cursorColor: Color(0xFF2c3956),
      onChanged: widget.onChanged,
      validator: widget.validator,
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
        errorMaxLines: 1,
        errorStyle: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
          fontSize: 12,
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
        border: _generalBorderConfiguration(),
        disabledBorder: _generalBorderConfiguration(),
        enabledBorder: _generalBorderConfiguration(),
        focusedBorder: _generalBorderConfiguration(),
        focusedErrorBorder: _errorBorderConfiguration(),
        errorBorder: _errorBorderConfiguration(),
      ),
    );
  }

  OutlineInputBorder _generalBorderConfiguration() {
    return OutlineInputBorder(
      gapPadding: 0,
      borderRadius: BorderRadius.circular(24),
      borderSide: const BorderSide(
        width: 3,
        color: Color(0xFF2c3956),
      ),
    );
  }

  OutlineInputBorder _errorBorderConfiguration() {
    return OutlineInputBorder(
      gapPadding: 0,
      borderRadius: BorderRadius.circular(24),
      borderSide: const BorderSide(
        width: 3,
        color: Colors.red,
      ),
    );
  }
}
