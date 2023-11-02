import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class QuestionModel {
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  const QuestionModel({
    required this.correctAnswerIndex,
    required this.options,
    required this.question

  });
}

List<QuestionModel> questions = [
  QuestionModel(
    question: "What is the capital of France??",
    options: ["Paris", "Dhaka", "London", "Mosco"],
    correctAnswerIndex: 0, // Dart
  ),
  QuestionModel(
    question: "What is the chemical symbol for gold??",
    options: ["HO2", "AU", "Ag"],
    correctAnswerIndex: 1, // Mobile app development
  ),
  QuestionModel(
    question: "WWhat is the largest planet in our solar system?",
    options: ["Ploto", "Naptune", "Jupiter", "Earth"],
    correctAnswerIndex: 2, // Text
  ),
  QuestionModel(
    question: "Who is the current President of the United States (as of my last knowledge update in January 2022)??",
    options: ["Tony Stark", "Zockerbarc", "Bill Gets", "Joseph R. Biden Jr."],
    correctAnswerIndex: 3, // Visual Studio Code
  ),
  QuestionModel(
    question: "hat is the tallest mountain in the world?",
    options: ["Mount Everest.", "Hili", "tur", "safa"],
    correctAnswerIndex: 0, // Component
  ),
  QuestionModel(
    question: "In which year did the Titanic sink?",
    options: ["April 15, 1850", "April 15, 1912", "April 15, 1913", "April 15, 1916"],
    correctAnswerIndex: 1, // flutter build apk
  ),
  QuestionModel(
    question: "What is the chemical formula for water?",
    options: ["HO2", "C20", "H20", "HCL"],
    correctAnswerIndex: 2, // Pub
  ),
  QuestionModel(
    question: "Who painted the Mona Lisa?",
    options: ["Cengis Khan", "Joynal Abedin", "Muksitul Islam", "Leonardo da Vinci."],
    correctAnswerIndex: 3, // Updating the user interface
  ),
  QuestionModel(
    question: "What is the currency of Japan?",
    options: ["BDT", "RS", "USD", "DIR"],
    correctAnswerIndex: 0, // Column
  ),
  QuestionModel(
    question: "What is the name of lergest sea beach in bangladesh",
    options: ["Potenga", "Cox-bazar", "Nikli hawor", "Tanguar Hawr"],
    correctAnswerIndex: 1, // Navigator
  ),
];




class button extends StatelessWidget {
  const button({
    required this.onpressed,
    required this.label
  });

  final VoidCallback? onpressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(CupertinoColors.systemYellow),
              ),
              onPressed: onpressed,
              child: Text(label, style: TextStyle(fontSize: 30),
              )),
        ),
      ],
    );
  }
}






Widget buildCorrectIcon() => const CircleAvatar(
  radius: 15,
  backgroundColor: Colors.green,
  child: Icon(
    Icons.check,
    color: Colors.white,
  ),
);
Widget buildWrongIcon() => const CircleAvatar(
  radius: 15,
  backgroundColor: Colors.red,
  child: Icon(
    Icons.close,
    color: Colors.white,
  ),
);


class AnswerCard extends StatelessWidget {
  const AnswerCard({
    super.key,
    required this.question,
    required this.isSelected,
    required this.currentIndex,
    required this.correctAnswerIndex,
    required this.selectedAnswerIndex,
  });

  final String question;
  final bool isSelected;
  final int? correctAnswerIndex;
  final int? selectedAnswerIndex;
  final int currentIndex;


  @override
  Widget build(BuildContext context) {

    bool isCorrectAnswer = currentIndex == correctAnswerIndex;
    bool isWrongAnswer = !isCorrectAnswer && isSelected;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child:
      selectedAnswerIndex != null
          ? Container(
        height: 60,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
              width: 2,
              color: isCorrectAnswer
                  ? Colors.green
                  : isWrongAnswer
                  ? Colors.red
                  : Colors.white
          ),
        ),

        child: Row(
          children: [
            Expanded(child: Text(question,style: TextStyle(fontSize: 20,color: Colors.black))),
            SizedBox(width: 10),
            isCorrectAnswer
                ? buildCorrectIcon()
                : isWrongAnswer
                ?buildWrongIcon()
                :const SizedBox.shrink()
          ],
        ),

      )
          : Container(
        height: 55,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
              width: 2,
              color: Colors.white
          ),
        ),



        child: Row(
          children: [
            Expanded(child: Text(question,style: TextStyle(fontSize: 20,color: Colors.black))),
            SizedBox(width: 10),
          ],
        ),

      ),
    );
  }
}