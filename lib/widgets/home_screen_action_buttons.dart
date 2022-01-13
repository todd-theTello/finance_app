import 'package:finance_app/constants/colors.dart';
import 'package:flutter/material.dart';

class HomePageActions extends StatelessWidget {
  const HomePageActions(
      {Key? key,
      required final String actionLabel,
      required final IconData actionIcon,
      required final Color actionColor,
      required final VoidCallback onTap})
      : _actionColor = actionColor,
        _actionIcon = actionIcon,
        _actionLabel = actionLabel,
        _onTap = onTap,
        super(key: key);
  final String _actionLabel;
  final IconData _actionIcon;
  final Color _actionColor;
  final VoidCallback _onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Column(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              color: containerPrimaryColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Icon(
              _actionIcon,
              color: _actionColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_actionLabel),
          )
        ],
      ),
    );
  }
}
