import 'package:finance_app/constants/colors.dart';
import 'package:finance_app/constants/text_styles.dart';
import 'package:flutter/material.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);
  static const String id = " user profile screen route";
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              padding: EdgeInsets.zero,
              iconSize: 65,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    color: containerPrimaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Icon(
                    Icons.close,
                    size: 25,
                  ),
                ),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 14),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/favicon.ico"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14),
              child: Text(
                "Todd Nelson",
                style: headerLabelStyle.copyWith(fontSize: 24),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.0),
              child: Text("Mobile App Developer"),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: ListView(
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.corporate_fare,
                          size: 30,
                        ),
                        title: Text("Corporate App"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.security,
                          size: 30,
                        ),
                        title: Text("Security Settings"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.shopping_cart_outlined,
                          size: 30,
                        ),
                        title: Text("Online Shopping"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.store_mall_directory_outlined,
                          size: 30,
                        ),
                        title: Text("Groceries"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.fingerprint,
                          size: 30,
                        ),
                        title: Text("Thumb Scanner"),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
