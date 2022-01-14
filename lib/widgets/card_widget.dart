import 'package:finance_app/constants/colors.dart';
import 'package:finance_app/constants/text_styles.dart';
import 'package:finance_app/model/card_details.dart';
import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.longestSide,
      height: MediaQuery.of(context).size.longestSide * 0.3,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.yellow.shade700,
                      borderRadius: BorderRadius.circular(5)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    cards[0].cardNumber,
                    style: headerLabelStyle.copyWith(
                      fontSize: 28,
                      fontFamily: "Oxygen",
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        cards[0].cardHolderName,
                        style: headerLabelStyle.copyWith(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Expiry Date",
                        style: labelStyle,
                      ),
                    ),
                    Text(
                      cards[0].expMonth.toString() + "/" + cards[0].expYear.toString(),
                      style: labelStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w600, wordSpacing: 1),
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.red,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.yellow.shade900,
                        )
                      ],
                    ),
                    Text("Mastercard")
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
