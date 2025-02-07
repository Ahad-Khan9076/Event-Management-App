import 'package:flutter/material.dart';
import 'package:ycps_society_app/utils/constants.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/logo.png', width: 200, height: 150),
                  SizedBox(height: 5),
                  Text(
                    'Welcome to YCPS App',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Constants.textColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: CircularProgressIndicator(color: Constants.primaryColor),
          ),
        ],
      ),
    );
  }
}
