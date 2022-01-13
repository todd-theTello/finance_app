import 'package:finance_app/constants/colors.dart';
import 'package:finance_app/constants/text_styles.dart';
import 'package:flutter/material.dart';

class BalanceDisplayWidget extends StatelessWidget {
  const BalanceDisplayWidget(
      {Key? key,
      required final double balance,
      required final double percentage,
      required final IconData direction,
      required final VoidCallback onTap})
      : _balance = balance,
        _percentage = percentage,
        _direction = direction,
        _onTap = onTap,
        super(key: key);
  final double _balance;
  final double _percentage;
  final IconData _direction;
  final VoidCallback _onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        height: MediaQuery.of(context).size.longestSide * 0.2,
        decoration: BoxDecoration(
          color: containerPrimaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 26.0),
                  child: Text(
                    " January ${DateTime.now().day.toString()},  ${DateTime.now().year.toString()} ",
                    style: labelStyle.copyWith(color: secondaryTextColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 26.0),
                  child: Text(
                    "\$$_balance",
                    style: headerLabelStyle,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 26.0, horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _percentage.toString(),
                    style: headerLabelStyle.copyWith(
                        fontWeight: FontWeight.w600, fontSize: 26),
                  ),
                  Icon(
                    _direction,
                    size: 36,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
