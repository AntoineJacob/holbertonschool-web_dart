class User {
    String name = "";

    String showName() {
        return('Hello ${name}');
    }
}

void main() {
  final firstPer = User();
  firstPer.name = "Youssef Belhadj";
  print(firstPer.showName());
}