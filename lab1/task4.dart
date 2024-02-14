int countNegativeTemperatures(List<int> temperatures) {
  int count = 0;
  for (int temperature in temperatures) {
    if (temperature < 0) {
      count++;
    }
  }
  return count;
}

void main() {
  List<int> temperatures = [5, -3, 2, -8, 10, -1];
  int negativeCount = countNegativeTemperatures(temperatures);
  print('Кількість відємних температур: $negativeCount');
}
