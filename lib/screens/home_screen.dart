import 'package:finance_app/constants/colors.dart';
import 'package:finance_app/constants/text_styles.dart';
import 'package:finance_app/model/chart_data.dart';
import 'package:finance_app/screens/cards_screen.dart';
import 'package:finance_app/screens/user_profile_screen.dart';
import 'package:finance_app/widgets/balance_display_widget.dart';
import 'package:finance_app/widgets/home_screen_action_buttons.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

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
                  decoration: BoxDecoration(color: containerPrimaryColor, borderRadius: BorderRadius.circular(20)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
                    child: Text("This Week"),
                  ),
                ),
              ],
            ),
          ),
          //TODO: Add a chart to show transactions performed monthly
          SfCircularChart(
            series: <CircularSeries<Reviews, String>>[
              RadialBarSeries(
                gap: "10",
                trackColor: Colors.black,
                pointColorMapper: (Reviews color, _) {
                  if (_ == 1) {
                    return buttonColor;
                  } else if (_ == 0) {
                    return containerPrimaryColor;
                  }
                },
                dataSource: reviews,
                xValueMapper: (Reviews type, _) => type.reviews,
                yValueMapper: (Reviews count, _) => count.count,
              )
            ],
          ),
          SfCartesianChart(
              primaryXAxis: const CategoryAxis(),
              // Chart title
              // Enable legend
              legend: const Legend(isVisible: true),
              // Enable tooltip
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <CartesianSeries<Chart, String>>[
                StackedColumn100Series<Chart, String>(
                    pointColorMapper: (Chart color, _) {
                      if (_ == 1) {
                        return containerPrimaryColor;
                      } else if (_ == 0) {
                        return buttonColor;
                      } else if (_ == 4) {
                        return buttonColor;
                      } else if (_ == 7) {
                        return containerPrimaryColor;
                      } else if (_ == 10) {
                        return buttonColor;
                      }
                    },
                    color: Colors.teal,
                    borderColor: Colors.purple,
                    dataSource: chartData,
                    xValueMapper: (Chart sales, _) => sales.month,
                    yValueMapper: (Chart sales, _) => sales.credit,
                    name: ""
                    // Enable data label
                    )
              ]),

          Padding(
            padding: const EdgeInsets.all(8.0),
            //Initialize the spark charts widget
            child: SfSparkLineChart.custom(
              //Enable the trackball
              trackball: const SparkChartTrackball(activationMode: SparkChartActivationMode.tap),
              //Enable marker
              marker: const SparkChartMarker(displayMode: SparkChartMarkerDisplayMode.all),
              //Enable data label
              labelDisplayMode: SparkChartLabelDisplayMode.all,
              xValueMapper: (int index) => chartData[index].month,
              yValueMapper: (int index) => chartData[index].credit,
              dataCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
