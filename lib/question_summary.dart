
import 'package:flutter/material.dart';
import 'package:quizapp/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return  SummaryItem(itemData: data);
              /* Row(
              children: [
                Text(((data['question_index'] as int) + 1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        data['question'] as String,
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: const TextStyle(color: Color.fromARGB(
                            192, 47, 7, 84)),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: const TextStyle(color: Color.fromARGB(
                            255, 10, 42, 68)),
                      ),
                    ],
                  ),
                ),
              ],
            );*/
          },
          ).toList(),
        ),
      ),
    );
  }
}
