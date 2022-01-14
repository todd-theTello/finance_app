import 'package:finance_app/model/card_screen_info.dart';

import 'package:flutter/material.dart';

class CardsScreen extends StatefulWidget {
  const CardsScreen({Key? key}) : super(key: key);
  static const String id = "cards screen route";
  @override
  _CardsScreenState createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView.builder(
              itemCount: listViewData.length,
              itemBuilder: (BuildContext context, int index) {
                return listViewData[index];
              })),
    );
  }
}
