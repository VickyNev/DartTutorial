import "dart:math";
import "dart:io";

String prompt(String promptText){
  print ("Users input: ${promptText}");
  String answer = stdin.readLineSync();
  return answer;
}

int promptNumber(String promptText){
  print (promptText);
  int myNum = int.parse(stdin.readLineSync());
  return myNum;
}

class MathQuestion{
  String questionText;
  int answerNum;

  MathQuestion(String aQuestion, int aAnswer){
    this.questionText = aQuestion;
    this.answerNum = aAnswer;
  }
}

void main() {
  /*List<String> mathQuestions = ["3+5", "100-40", "20*20"];
  List<int> rightAnswers = [3+5, 100-40, 20*20];
  print (rightAnswers);*/





  List<MathQuestion> questions = [
    MathQuestion("3 + 5", 3+5),
    MathQuestion("100 - 55", 100-55),
    MathQuestion("20 * 25", 20*25)
    ];
    
    //data


 int score = 0;

  /*MathQuestion quastion1 = MathQuestion("3+5", 8.0);
    MathQuestion quastion2 = MathQuestion("100-55", 45.0);
    MathQuestion quastion3 = MathQuestion("20*25", 500.0);*/

   //print(questions[0].questionText);

  for(MathQuestion mathQuestion in questions){

  int userAnswer = promptNumber(mathQuestion.questionText);
  if (userAnswer == mathQuestion.answerNum){
  print ("Correct!");
  score++;
  }
    else{
    print("Incorrect, the right answer is ${mathQuestion.answerNum}!");}

   //print (mathQuestion.answerNum);

  }
  print (
    "You've got ${score} correct answers from the ${questions.length}"
    );
}