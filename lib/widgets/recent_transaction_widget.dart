import 'package:finance_app/constants/colors.dart';
import 'package:finance_app/constants/text_styles.dart';
import 'package:flutter/material.dart';

class RecentTransactionWidget extends StatelessWidget {
  const RecentTransactionWidget({
    Key? key,
    required final String itemLabel,
    required final String datePurchased,
    required final String itemPrice,
  })  : _itemLabel = itemLabel,
        _datePurchased = datePurchased,
        _itemPrice = itemPrice,
        super(key: key);
  final String _itemLabel;
  final String _datePurchased;
  final String _itemPrice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.shortestSide,
        height: 90,
        decoration: BoxDecoration(
          color: containerPrimaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.fastfood_outlined),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Text(
                            _itemLabel,
                            style: headerLabelStyle.copyWith(
                                fontSize: 22, fontFamily: "Oxygen"),
                          ),
                        ),
                        Text(_datePurchased),
                      ],
                    ),
                  ),
                ],
              ),
              Text("+\$$_itemPrice"),
            ],
          ),
        ),
      ),
    );
  }
}
