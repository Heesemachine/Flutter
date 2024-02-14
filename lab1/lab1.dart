import 'dart:io';

void task1() {
  stdout.write("Введіть кількість секунд: ");
  int seconds = int.parse(stdin.readLineSync()!);

  int hours = seconds ~/ 3600;
  int minutes = (seconds % 3600) ~/ 60;

  print("Пройшло $hours годин і $minutes хвилин.");
}

void task2() {
  stdout.write("Введіть оцінку за екзамен: ");
  int grade = int.parse(stdin.readLineSync()!);

  if (grade <= 59) {
    print("Незадовільно");
  } else if (grade <= 73) {
    print("Задовільно");
  } else if (grade <= 89) {
    print("Добре");
  } else {
    print("Відмінно");
  }
}

void task3() {
  var numbers = <int>[];
  int sum = 0;
  int count = 0;

  while (true) {
    stdout.write("Введіть число (при введені 0, введеня закінчується): ");
    int n = int.parse(stdin.readLineSync()!);

    if (n == 0) {
      break;
    }

    numbers.add(n);
    sum += n;
    count++;
  }

  if (count > 0) {
    print('Числа в списку: $numbers');
    double average = sum / count;
    print("Середнє арифметичне введених чисел: $average");
  } else {
    print("Ви не ввели жодного числа, щоб обчислити середнє арифметичне.");
  }
}

void task5() {
  var words = {
    'сонце': 'sun',
    'день': 'day',
    'місяць': 'moon',
    'ніч': 'night',
  };

  var wordPairs = words.entries.toList();

  wordPairs.shuffle();

  var mistakes = {};

  for (var entry in wordPairs) {
    var ukrWord = entry.key;
    var engTranslation = entry.value;

    stdout.write("Перекладіть '$ukrWord': ");
    var userTranslation = stdin.readLineSync();

    if (userTranslation!.toLowerCase() == engTranslation.toLowerCase()) {
      print("Правильно!");
    } else {
      print("Неправильно. Правильний переклад - '$engTranslation'.");

      mistakes[ukrWord] = engTranslation;
    }
  }

  if (mistakes.isEmpty) {
    print("Помилок не знайдено. Ви молодець!");
  } else {
    print("\nCлoвa, y яких були помилки:");
    mistakes.forEach((ukrWord, engTranslation) {
      print("$ukrWord - $engTranslation");
    });
  }
}
