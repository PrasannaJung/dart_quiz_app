import 'question.dart';
import 'dart:io';

void main() {
  List<Question> questions = [
    Question(
      question: 'What is the capital of Nepal?',
      options: ['Doha', 'Kathmandu', 'Islamabad', 'New Delhi'],
      answer: 2,
    ),
    Question(
      question: 'Who has won the most ballon d\'ors?',
      options: [
        'Lionel Messi',
        'Cristiano Ronaldo',
        'Neymar',
        'Zlatan Ibrahimovic'
      ],
      answer: 1,
    ),
    Question(
      question: 'What is the capital of Kenya?',
      options: ['Nairobi', 'Mombasa', 'Kisumu', 'Nakuru'],
      answer: 1,
    ),
    Question(
      question: 'What is the capital of South Africa?',
      options: ['Johannesburg', 'Cape Town', 'Durban', 'Pretoria'],
      answer: 2,
    ),
    Question(
      question: 'What is the capital of Egypt?',
      options: ['Cairo', 'Alexandria', 'Giza', 'Luxor'],
      answer: 1,
    ),
    Question(
      question: 'What is the capital of Morocco?',
      options: ['Rabat', 'Casablanca', 'Marrakesh', 'Fez'],
      answer: 1,
    ),
    Question(
      question: 'What is the capital of Algeria?',
      options: ['Algiers', 'Oran', 'Constantine', 'Annaba'],
      answer: 1,
    ),
    Question(
      question: 'What is the capital of Tunisia?',
      options: ['Tunis', 'Sfax', 'Sousse', 'Kairouan'],
      answer: 1,
    ),
    Question(
      question: 'What is the capital of Libya?',
      options: ['Tripoli', 'Benghazi', 'Misrata', 'Zawiya'],
      answer: 1,
    ),
    Question(
      question: 'What is the capital of Sudan?',
      options: ['Khartoum', 'Omdurman', 'Port Sudan', 'Kassala'],
      answer: 2,
    ),
  ];

  askQuestions(questions);
}

void askQuestions(List<Question> questions) {
  int score = 0;
  int wrong = 0;
  for (int i = 0; i < questions.length; i++) {
    print(questions[i].question);
    for (int j = 0; j < questions[i].options!.length; j++) {
      print('${j + 1}. ${questions[i].options![j]}');
    }
    print('Enter your answer: ');
    int answer = int.parse(stdin.readLineSync()!);

    if (answer < 1 || answer > 4) {
      print('Invalid answer. Please enter a number between 1 and 4');
      i--;
      continue;
    }

    if (answer == questions[i].answer) {
      score++;
    } else {
      wrong++;
    }
  }
  print('You got $score questions right and $wrong questions wrong');
}
