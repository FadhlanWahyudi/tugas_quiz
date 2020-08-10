import 'package:tugas_quiz/question.dart';

class QuestionLogic {
  int _questionNumber = 0;

  List<Question> _questionListQ = [
    Question('Verb 2 eat is Eaten', false),
    Question('Verb 2 see is Saw', true),
    Question('Verb 3 sell is Sold', true),
    Question('Verb 2 take is Taken', false),
    Question('Verb 2 tell is Told', true),
    Question('Verb 3 wake is woken', true),
    Question('Verb 2 write is written', false),
    Question('Verb 2 wim is won', true),
    Question('Verb 2 wear is worn', false),
    Question('Verb 2 weep is wept', true)
  ];

  String getQuestion() => _questionListQ[_questionNumber].question;

  int getQuestionNumberText() => _questionNumber + 1;

  int getTotalQuestion() => _questionListQ.length;

  bool getCorrectAnswer() => _questionListQ[_questionNumber].answer;

  void nextQuestion() {
    if (_questionNumber < _questionListQ.length - 1) {
      _questionNumber++;
      print(_questionNumber);
    }
  }

  bool isFinish() {
    if (_questionNumber < _questionListQ.length) {
      return true;
    } else {
      return false;
    }
  }

  void resetQuestion() => _questionNumber = 0;
}
