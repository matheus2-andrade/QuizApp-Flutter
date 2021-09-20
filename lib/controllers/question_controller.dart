import 'package:flutter/animation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:quiz_app/models/Questions.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  AnimationController _animationController;
  Animation _animation;
  Animation get animation => this._animation;

  List<Question> _questions = sample_data
      .map((question) => Question(
          id: question['id'],
          question: question['question'],
          options: question['options'],
          answer: question['answer_index']))
      .toList();

  List<Question> get questions => this._questions;

  bool _isAnswerd = false;
  bool get isAnswered => this._isAnswerd;

  int _correctAns;
  int get correctAns => this._correctAns;

  int _selectedAns;
  int get selectedAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns;
  int get numOfCorrectAns => this._correctAns;

  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        update();
      });

    _animationController.forward();
    super.onInit();
  }

  void checkAns(Question question, int selectedIndex) {
    _isAnswerd = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    _animationController.stop();
  }
}
