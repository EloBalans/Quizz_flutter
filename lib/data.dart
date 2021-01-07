class QuizInfo {
  final int position;
  final String name;
  final String iconImage;
  final List<String> questions;
  final List<String> answers;

  QuizInfo(
    this.position, {
    this.name, 
    this.iconImage, 
    this.questions,
    this.answers,
    });
}

List<QuizInfo> typeOfQuiz = [
  QuizInfo(
    1,
    name: 'Mathematic',
    iconImage: 'assets/Math_quiz.png',
    questions: [
      '1+2'
    ],
    answers: [
      "1",
      "2",
      "3",
      "4",
    ],
  ),
  QuizInfo(
    2,
    name: 'Geography',
    iconImage: 'assets/Geo_quiz.png',
    questions: [
      'how long is the equator?'
    ],
    answers: [
      "10000",
      "20000",
      "30000",
      "40000",
    ],
  ),
  QuizInfo(
    3,
    name: 'Physics',
    iconImage: 'assets/Geo_quiz.png',
    questions: [
      'costamcostak?'
    ],
    answers: [
      "10000",
      "20000",
      "30000",
      "40000",
    ],
  ),
];