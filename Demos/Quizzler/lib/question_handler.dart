import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'question.dart';
import 'list_of_questions.dart';

class QuestionHandler {
  static List<Question> _questions = [];
  static List<Icon> _scoreKeeper = [];
  static int _questionNumber;
  static int _numQuestionsCorrect = 0;

  /// Default Constructor
  QuestionHandler() {
    _setQuestions();
    _questionNumber = 0;
  }

  ////
  // Getters & Setters
  ////
  void _setQuestions() {
    _questions.addAll(ListOfQuestions.getQuestions());
  }

  /// Returns the current question
  Question getQuestion() {
    if (isEndOfQuiz()) {
      return _questions[_questionNumber - 1];
    }
    return _questions[_questionNumber];
  }

  /// Returns the current question index
  int getQuestionNumber() {
    return _questionNumber;
  }

  /// Increments the question counter so that we can move on to the next question
  void nextQuestion() {
    if (!isEndOfQuiz()) {
      _questionNumber++;
    }
    else
  }

  /// Returns the list that holds the Icons that keep track of score
  List<Icon> getScoreKeeper(){
    return _scoreKeeper;
  }

  ////
  // Utility Functions
  ////
  /// Checks to see if we reached the end of the quiz
  bool isEndOfQuiz() {
    return _questionNumber == ListOfQuestions.NUM_OF_QUESTIONS;
  }

  /// Checks to see if the users choice was correct
  void checkIfCorrect(bool userAnswer) {
    // Check what the user selected with what the actual answer is
    if (userAnswer == getQuestion().answer) {
      ++_numQuestionsCorrect;
      _scoreKeeper.add(Icon(Icons.check, color: Colors.green));
      return;
    }
    // Return the result in a Icon
    _scoreKeeper.add(Icon(Icons.close, color: Colors.red));
  }

  /// Displays the results of the quiz and resets on button press
  String showResults() {
    int totalQuestionCount = ListOfQuestions.NUM_OF_QUESTIONS;
    int numCorrect = _numQuestionsCorrect;
    reset();
    return "You've gotten $numCorrect out of $totalQuestionCount questions correct.";
  }

  /// Resets the state of the game
  List<Icon> reset() {
    _questionNumber = 0;
    _numQuestionsCorrect = 0;
    _scoreKeeper = [];
  }
}
