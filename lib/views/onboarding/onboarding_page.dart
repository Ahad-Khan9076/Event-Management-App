import 'package:flutter/material.dart';
import 'package:ycps_society_app/utils/custom_button.dart';
import 'package:ycps_society_app/utils/constants.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background to white
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Spacer(), // Add space at the top

          // Text Content
          Column(
            children: [
              Text(
                "Our Mission",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Constants.textColor,
                  letterSpacing: 1.2,
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "YCPS Society empowers students through collaboration, innovation, and leadership, fostering a vibrant community and inspiring positive change.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700], // Light grey text
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ],
          ),

          Spacer(), // Add space between text and button

          // Circular Button at the Bottom
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: GestureDetector(
              onTap: () {
                print("Onboarding Completed");
                // Navigate to another screen
              },
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants
                      .custombuttonColor, // Use your app's button color
                  boxShadow: [
                    BoxShadow(
                      color: Constants.custombuttonColor.withOpacity(0.4),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
