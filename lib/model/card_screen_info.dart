import 'package:finance_app/constants/text_styles.dart';
import 'package:finance_app/widgets/card_widget.dart';
import 'package:finance_app/widgets/recent_transaction_widget.dart';
import 'package:flutter/material.dart';

import 'card_details.dart';

List<Widget> listViewData = [
  Padding(
    padding: const EdgeInsets.symmetric(vertical: 16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Text(
                "Your Cards",
                style: headerLabelStyle.copyWith(fontSize: 28),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text("You have ${cards.length} Active Cards"),
            )
          ],
        ),
        SizedBox(
          height: 45,
          child: FloatingActionButton(
            backgroundColor: Colors.yellow.shade300,
            onPressed: () {},
            child: const Icon(
              Icons.add,
            ),
          ),
        )
      ],
    ),
  ),
  const Padding(
    padding: EdgeInsets.symmetric(vertical: 20.0),
    child: CustomCardWidget(),
  ),
  Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Text(
      "Recent Transactions",
      style: headerLabelStyle.copyWith(
          fontSize: 24, fontFamily: "Oxygen", fontWeight: FontWeight.w500),
    ),
  ),
  const RecentTransactionWidget(
    itemLabel: "KFC",
    datePurchased: "January 12",
    itemPrice: "110",
  ),
  const RecentTransactionWidget(
    itemLabel: "Paypal",
    datePurchased: "January 10",
    itemPrice: "2,010",
  ),
  const RecentTransactionWidget(
    itemLabel: "Auto Repair",
    datePurchased: "January 3",
    itemPrice: "1,010",
  ),
  const RecentTransactionWidget(
    itemLabel: "Utility Bill",
    datePurchased: "December 29",
    itemPrice: "2,010",
  ),
];
