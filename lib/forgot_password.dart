import 'package:flutter/material.dart';
import 'package:travel_app/components/continue_button.dart';
import 'package:travel_app/components/white_text_field.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
              'Забыли пароль?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Поможем восстановить ваш аккаунт',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Email',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            WhiteTextField(),
            SizedBox(height: 16),
            ContinueButton(),
          ],
        ),
      ),
    );
  }
}
