import 'dart:math';

class TPTriangle {
  late double cathetus1;
  late double cathetus2;

  TPTriangle() {
    cathetus1 = 0;
    cathetus2 = 0;
  }

  TPTriangle.withParams(double cathetus1, double cathetus2) {
    this.cathetus1 = cathetus1;
    this.cathetus2 = cathetus2;
  }

  TPTriangle.copy(TPTriangle triangle) {
    cathetus1 = triangle.cathetus1;
    cathetus2 = triangle.cathetus2;
  }

  void input(double cathetus1, double cathetus2) {
    this.cathetus1 = cathetus1;
    this.cathetus2 = cathetus2;
  }

  void output() {
    print("Катет 1: $cathetus1");
    print("Катет 2: $cathetus2");
  }

  double calculateArea() {
    return 0.5 * cathetus1 * cathetus2;
  }

  double calculatePerimeter() {
    double hypotenuse = sqrt(pow(cathetus1, 2) + pow(cathetus2, 2));
    return cathetus1 + cathetus2 + hypotenuse;
  }

  bool isEqualTo(TPTriangle other) {
    return (cathetus1 == other.cathetus1 && cathetus2 == other.cathetus2) ||
        (cathetus1 == other.cathetus2 && cathetus2 == other.cathetus1);
  }
}

void main() {
  TPTriangle triangle1 = TPTriangle.withParams(3, 4);
  TPTriangle triangle2 = TPTriangle.copy(triangle1);

  triangle1.output();
  print("Площа: ${triangle1.calculateArea()}");
  print("Периметр: ${triangle1.calculatePerimeter()}");

  if (triangle1.isEqualTo(triangle2)) {
    print("Трикутники однакові.");
  } else {
    print("Трикутники відрізняються.");
  }
}
