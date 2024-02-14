import 'dart:io';

void main() {
  stdout.write("Введіть вік претендента: ");
  int age = int.parse(stdin.readLineSync()!);

  if (age >= 32 && age <= 45) {
    print("Цей претендент може бути прийнятий на роботу.");
  } else {
    print("Цей претендент не відповідає вимогам для прийому на роботу.");
  }
}
