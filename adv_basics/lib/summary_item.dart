import 'package:flutter/material.dart';
import 'package:adv_basics/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    final isCorrectAnswer =
        itemData['user-answer'] == itemData['correct-answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData['question-index'] as int,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                itemData['correct-answer'] as String,
                style: const TextStyle(
                  color: Colors.green,
                ),
              ),
              Text(
                itemData['user-answer'] as String,
                style: const TextStyle(
                  color: Colors.lightGreen,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
