import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          const Text(
            'Learn flutter the fun way',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.white,
                ),
                foregroundColor: Colors.white),
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
