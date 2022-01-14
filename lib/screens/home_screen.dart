import 'package:finance_app/constants/colors.dart';
import 'package:finance_app/constants/text_styles.dart';
import 'package:finance_app/screens/cards_screen.dart';
import 'package:finance_app/screens/user_profile_screen.dart';
import 'package:finance_app/widgets/balance_display_widget.dart';
import 'package:finance_app/widgets/home_screen_action_buttons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String id = "home screen route";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.pushNamed(context, UserProfileScreen.id);
              },
              icon: CircleAvatar(
                radius: 20,
                backgroundColor: buttonColor,
                backgroundImage: const AssetImage("assets/images/favicon.ico"),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Your Balance",
              style: headerLabelStyle.copyWith(color: secondaryTextColor, fontSize: 28),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            child: BalanceDisplayWidget(
                balance: 27802.02,
                percentage: 15.0,
                direction: Icons.arrow_upward,
                onTap: () {
                  Navigator.pushNamed(context, CardsScreen.id);
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomePageActions(
                  actionLabel: "Send",
                  actionIcon: Icons.arrow_upward,
                  actionColor: Colors.red,
                  onTap: () {},
                ),
                HomePageActions(
                  actionLabel: "Receive",
                  actionIcon: Icons.arrow_downward,
                  actionColor: Colors.green,
                  onTap: () {},
                ),
                HomePageActions(
                  actionLabel: "Loan",
                  actionIcon: Icons.attach_money_rounded,
                  actionColor: Colors.yellow,
                  onTap: () {},
                ),
                HomePageActions(
                  actionLabel: "Topup",
                  actionIcon: Icons.cloud_upload_rounded,
                  actionColor: Colors.blueGrey,
                  onTap: () {},
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Activities",
                    style: headerLabelStyle.copyWith(fontSize: 24),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: containerPrimaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
                    child: Text("This Week"),
                  ),
                ),
              ],
            ),
          ),
          //TODO: Add a chart to show transactions performed monthly
        ],
      ),
    );
  }
}
