double calculateArea(double height, double base) {
    double area = (0.5 * height * base);
    return double.parse((area).toStringAsFixed(2));
}

main() {
  print(calculateArea(20,7));
  print(calculateArea(10,7));
  print(calculateArea(8.5,3.7));
}