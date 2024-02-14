import 'dart:math';
import 'dart:io';

void main() {
  Random random = Random();
  int secretNumber = random.nextInt(10);

  print("Спробуйте вгадати число від 1 до 10.");

  while (true) {
    stdout.write("Ваша спроба: ");
    int guess = int.parse(stdin.readLineSync()!);

    if (guess == secretNumber) {
      print("Вітаємо! Ви вгадали число $secretNumber!");
      break;
    } else if (guess < secretNumber) {
      print("Ваше число менше вигаданого.");
    } else {
      print("Ваше число більше вигаданого.");
    }
  }

  print("Гра завершена.");
}
