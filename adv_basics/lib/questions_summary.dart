import 'package:adv_basics/summary_item.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summarydata, {super.key});

  final List<Map<String, Object>> summarydata;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summarydata.map((data) {
            return SummaryItem(data);
          }).toList(),
        ),
      ),
    );
  }
}
