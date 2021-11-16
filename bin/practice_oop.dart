
import 'dart:cli';

void main(List<String> arguments) {
  Worker worker = Worker("Ivan", "Ivanov", 3000, 30);
  print(worker.getSalary());
  MyString myString = MyString();
  print(myString.reverse("Hello"));
  print(myString.ucFirst("damn"));
  print(myString.ucWords("what are you doing"));
  Validator validator = Validator();
  print(validator.isEmail("ivanivanov@gmail.com"));
}


class Worker{
  String? name;
  String? surname;
  int? rate;
  int? days;

  Worker(this.name, this.surname, this.rate, this.days);

  int getSalary(){
    return rate!*days!;
  }
}

class MyString{

  String reverse(String word){
    return word.split('').reversed.join();
  }

  String ucFirst(String word){
    List wordList = word.split('');
    var cap = wordList[0].toUpperCase();
    wordList[0] = cap;
    word = wordList.join();
    return word;
  }

  String ucWords(String words){
    List<String> wordsList = words.split(' ');
    for(int i = 0; i < wordsList.length; i++){
      wordsList[i] = ucFirst(wordsList[i]);
    }
    return wordsList.join(' ');
  }
}

class Validator {
  
  bool isEmail(String email){
    if (email.contains("@")){
      return true;
    }
    else {
      return false;
    }
  }
}
