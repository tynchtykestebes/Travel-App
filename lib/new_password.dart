import 'package:flutter/material.dart';
import 'package:travel_app/components/sent_button.dart';
import 'package:travel_app/components/white_text_field.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

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
              'Выберите новый пароль',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Помогите обезопасить свою учетную запись',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Новый пароль',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            WhiteTextField(),
            SizedBox(
              height: 12,
            ),
            Text(
              'Потвердите новый пароль',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            WhiteTextField(),
            SizedBox(height: 32),
            SentButton(),
          ],
        ),
      ),
    );
  }
}
