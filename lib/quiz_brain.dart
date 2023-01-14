import 'package:quiz/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(
        questionText: 'Merkury jest najgorętszą planetą w układzie słonecznym',
        questionAnswer: false),
    Question(
        questionText:
            'Słuchanie muzyki klasycznej w ciąży przyczynia się do rozwoju inteligencji dziecka',
        questionAnswer: false),
    Question(
        questionText: 'Jądro Ziemi jest tak gorące jak Słońce',
        questionAnswer: true),
    Question(
        questionText:
            'Mur Chiński jest jedynym obiektem zbudowanym przez człowieka widocznym z kosmosu',
        questionAnswer: false),
    Question(questionText: 'Czy Patrycja jest piękna?', questionAnswer: true),
    Question(
        questionText:
            'Ludzkie oczy nie zmieniają swojego rozmiaru od urodzenia',
        questionAnswer: true),
    Question(
        questionText:
            'Kleopatra żyła bliżej wynalezienia iphona niż wybudowania piramidy Cheopsa',
        questionAnswer: true),
    Question(
        questionText:
            'Występowanie pór roku jest spowodowane odległością Ziemi od Słońca',
        questionAnswer: false),
    Question(
        questionText:
            'Większość ludzi wykorzystuje tylko 10 proc. możliwości swojego mózgu',
        questionAnswer: false),
    Question(
        questionText:
            'Grawitacja nie jest identyczna we wszystkich miejscach na Ziemi',
        questionAnswer: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
