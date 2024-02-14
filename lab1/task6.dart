import 'dart:math';

class QuadraticEquation {
  double a;
  double b;
  double c;

  QuadraticEquation(this.a, this.b, this.c);

  bool hasSolutions() {
    return discriminant() >= 0;
  }

  double discriminant() {
    return b * b - 4 * a * c;
  }

  double firstRoot() {
    if (!hasSolutions()) {
      throw Exception("Рівняння не має розв'язків");
    }
    return (-b + sqrt(discriminant())) / (2 * a);
  }

  double secondRoot() {
    if (!hasSolutions()) {
      throw Exception("Рівняння не має розв'язків");
    }
    return (-b - sqrt(discriminant())) / (2 * a);
  }

  double operator [](int index) {
    if (index == 0) {
      return firstRoot();
    } else if (index == 1) {
      return secondRoot();
    } else {
      throw Exception("Неправильний індекс для розв'язків");
    }
  }

  void printEquation() {
    print('${a}x^2 + ${b}x + ${c} = 0');
  }
}

void main() {
  var equation = QuadraticEquation(1, -3, 2);

  equation.printEquation();

  if (equation.hasSolutions()) {
    print("Перший розв'язок: ${equation[0]}");
    print("Другий розв'язок: ${equation[1]}");
  } else {
    print("Рівняння не має розв'язків");
  }
}
