import 'package:flutter/material.dart';
import 'package:travel_app/components/continue_button.dart';
import 'package:travel_app/components/verification_code.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

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
            Text(
              'Верификация',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Введите код котрый мы отправили вам на почту',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                VerificationCode(),
                SizedBox(width: 16),
                VerificationCode(),
                SizedBox(width: 16),
                VerificationCode(),
                SizedBox(width: 16), 
                VerificationCode(),
              ],
            ),
            SizedBox(height: 12),
            Text(
              'Не получили код?',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            Text(
              'Отправить повторно 01:00',
              style: TextStyle(
                fontSize: 14,
                color: Colors.red,
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
