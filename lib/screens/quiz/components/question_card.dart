import 'package:flutter/material.dart';
import 'package:quiz_app/models/Questions.dart';
import 'package:quiz_app/screens/quiz/components/options.dart';

import '../../../constants.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key key,
    @required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: kBlackColor),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          ...List.generate(
              question.options.length,
              (index) => Option(
                  text: question.options[index], index: index, press: () {}))
        ],
      ),
    );
  }
}
