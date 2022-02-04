import 'package:flutter/material.dart';
import 'question.dart';
import 'list_of_questions.dart';

class QuestionHandler {
  static List<Question> _questions = [];
  int _questionNumber;

  /// Default Constructor
  QuestionHandler() {
    _setQuestions();
    this._questionNumber = 0;
  }

  ////
  // Getters & Setters
  ////
  void _setQuestions() {
    _questions.addAll(ListOfQuestions.getQuestions());
  }

  /// Returns the current question
  Question getQuestion() {
    if(isEndOfQuiz()){
      return _questions[this._questionNumber - 1];
    }

    return _questions[this._questionNumber];
  }

  /// Returns the current question index
  int getQuestionNumber() {
    return this._questionNumber;
  }

  /// Increments the question counter so that we can move on to the next question
  void nextQuestion() {
    if (!isEndOfQuiz()) {
      this._questionNumber++;
    }
  }

  bool isEndOfQuiz() {
    return this._questionNumber >= _questions.length;
  }

  ////
  // Utility Functions
  ////
  Icon checkIfCorrect(bool userAnswer) {
    // Check what the user selected with what the actual answer is
    if (userAnswer == getQuestion().answer) {
      return Icon(Icons.check, color: Colors.green);
    }
    // Return the result in a Icon
    return Icon(Icons.close, color: Colors.red);
  }
}
