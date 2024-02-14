class Vector2D {
  double x;
  double y;

  Vector2D(this.x, this.y);

  double dotProduct(Vector2D other) {
    return this.x * other.x + this.y * other.y;
  }
}

void main() {
  Vector2D a = Vector2D(3, 4);
  Vector2D b = Vector2D(5, 6);

  double scalarProduct = a.dotProduct(b);

  print("Скалярний добуток векторів a і b: $scalarProduct");
}
