import 'package:flutter/material.dart';
import 'package:login_signup_pages/screens/log_in.dart';
import 'package:login_signup_pages/screens/sign_up.dart';

class TabsBar extends StatelessWidget {
  const TabsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: const TabBar(
            indicatorColor: Colors.green,
            indicatorSize: TabBarIndicatorSize.tab,
            labelPadding: EdgeInsets.only(top: 15),
            padding: EdgeInsets.all(5),
            labelColor: Colors.black54,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18,
            ),
            tabs: [
              Tab(text: "Sign Up"),
              Tab(text: "Log In"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            SignUp(),
            LogIn(),
          ],
        ),
      ),
    );
  }
}
