import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xFF009762), Color(0xFF7ED957)], // Background gradient
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top Section with Welcome Text and Image
              SizedBox(height: 50),
              Text(
                "Welcome to",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Text(
                "Herbal Scape",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/potted_plant.png', // Replace with your asset image path
                height: 120,
              ),
              SizedBox(height: 20),

              // Sign-Up Form Section
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Sign-Up Header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                        Icon(
                          Icons.eco,
                          color: Color(0xFF7ED957),
                          size: 28,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    // Input Fields
                    buildInputField(label: "Name", hintText: "Olivia Wilson"),
                    SizedBox(height: 15),
                    buildInputField(label: "Email", hintText: "hello@reallygreatsite.com"),
                    SizedBox(height: 15),
                    buildInputField(label: "Password", hintText: "●●●●●●", isPassword: true),

                    SizedBox(height: 30),

                    // Next Button
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate to the next page
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF009762),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        ),
                        child: Text(
                          "Next",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Sign-In Link
                    Center(
                      child: Text(
                        "Already have an account? Sign in",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper Widget for Input Fields
  Widget buildInputField({required String label, required String hintText, bool isPassword = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(height: 8),
        TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            hintText: hintText,
            filled: true,
            fillColor: Color(0xFFDFF9E9),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
