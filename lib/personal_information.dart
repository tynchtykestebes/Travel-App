import 'package:flutter/material.dart';
import 'package:travel_app/components/white_text_field.dart';

const List<String> interestTexts = [
  'Музыка',
  'Кино',
  'Развлечения',
  'Прогулки',
  'Киберспорт',
  'Спорт',
  'Другое',
  'Настольные игры',
  'Спортзал',
  'Похудение',
  'Книги',
  'Путешествия',
];

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});

  void showSentDialogue(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const SizedBox(
            height: 284,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_circle,
                  color: Color.fromRGBO(255, 149, 0, 1),
                  size: 118,
                ),
                SizedBox(width: 8),
                Text(
                  "Отправлено",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromRGBO(
                      255,
                      149,
                      0,
                      1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromRGBO(
                    255,
                    149,
                    0,
                    1,
                  ),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              child: const Center(
                child: Text(
                  "Ок, спасибо!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(240, 240, 244, 1),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          top: 179,
          right: 30,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Личные данные',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                'Пожалуйста, заполните следующее',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Имя и Фамилия',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const WhiteTextField(),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Дата рождения',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Container(
                          height: 49,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const TextField(
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Пол',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Container(
                          height: 49,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const TextField(
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Телефонный номер',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const WhiteTextField(),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Специальность',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const WhiteTextField(),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Образование',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const WhiteTextField(),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Семейное положение',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const WhiteTextField(),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Любимый фильм',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const WhiteTextField(),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Любимая книга',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const WhiteTextField(),
              const Text(
                'Интересы',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const WhiteTextField(),
              const SizedBox(
                height: 12,
              ),
              Wrap(
  spacing: 12,
  runSpacing: 12,
  children: [
    for (String interestText in interestTexts)
      Container(
        height: 39,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const Color.fromRGBO(255, 149, 0, 1), 
            width: 2, 
          ),
        ),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromRGBO(255, 149, 0, 1), 
          ),
          child: Text(
            interestText,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ),
  ],
),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                height: 49,
                child: TextButton(
                  onPressed: () {
                    showSentDialogue(context);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromRGBO(255, 149, 0, 1),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Отправить',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
