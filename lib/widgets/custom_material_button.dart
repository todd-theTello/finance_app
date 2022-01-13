import 'package:finance_app/constants/text_styles.dart';
import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    Key? key,
    required final onPressed,
    required final buttonLabel,
    required final color,
  })  : _onPressed = onPressed,
        _buttonLabel = buttonLabel,
        _color = color,
        super(key: key);

  final VoidCallback _onPressed;
  final String _buttonLabel;
  final Color _color;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      color: _color,
      borderRadius: BorderRadius.circular(15.0),
      child: MaterialButton(
        onPressed: _onPressed,
        child: Text(
          _buttonLabel,
          style: buttonLabelStyle,
        ),
      ),
    );
  }
}
