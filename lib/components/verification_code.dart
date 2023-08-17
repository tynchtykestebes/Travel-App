import 'package:flutter/material.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          fillColor: Color.fromRGBO(
              255, 149, 0, 1),
          filled: true,
        ),
      ),
    );
  }
}