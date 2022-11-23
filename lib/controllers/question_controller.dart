// ignore_for_file: prefer_final_fields, unnecessary_this

import 'package:get/get.dart';

import '../models/Questions.dart';

class QuestionController extends GetxController {
  List<Question> _questions = sample_data
      .map(
        (question) => Question(
            id: question['id'],
            question: question['question'],
            options: question['options']),
      )
      .toList();

  List<Question> get questions => this._questions;
}