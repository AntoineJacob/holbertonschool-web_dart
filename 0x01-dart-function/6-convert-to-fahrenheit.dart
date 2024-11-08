List<double> convertToF(List<double> temperaturesInC) {
    List<double> temperaturesInF = temperaturesInC.map((temperaturesInC) {
        return double.parse((temperaturesInC * 9 / 5 + 32).toStringAsFixed(2));
    }).toList();
    return temperaturesInF;
}

main() {
  print(convertToF([25, 26, 23, 27, 30]));
  print(convertToF([22.5, 26, 27.3, 23.6, 25]));
  print(convertToF([-4.2, -2, 0.5, -5, -1.7]));
}