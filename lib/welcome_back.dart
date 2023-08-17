import 'package:flutter/material.dart';
import 'package:travel_app/components/continue_button.dart';

class WelcomeBack extends StatelessWidget {
  const WelcomeBack({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 244, 1),
      body: Padding(
        padding: EdgeInsets.only(
          left: 30,
          top: 179,
          right: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Icon(
                Icons.security,
                size: 86,
              ),
            ),
            Center(
              child: Text(
                'С возвращением',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 32),
            ContinueButton(),
          ],
        ),
      ),
    );
  }
}
