import 'package:flutter/material.dart';

class GradientExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xFF009762), Color(0xFF7ED957)], // Exact gradient colors
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Add an icon that matches the provided design
              Icon(
                Icons.local_florist, // Example icon, replace with the exact one needed
                size: 100,
                color: Colors.white, // Icon color for contrast
              ),
              SizedBox(height: 20),
              // Add a text styled to match the design
              Text(
                "Herbal Plant Detection",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Navigate to another page
                  Navigator.pushNamed(context, '/camera');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // White button with green text
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF009762), // Match the gradient's green color
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
