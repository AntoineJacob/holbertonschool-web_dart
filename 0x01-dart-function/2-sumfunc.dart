int add(int a, int b) {
    return(a + b);
}

int sub(int a, int b) {
    return(a - b);
}

String showFunc(int a, int b) {
    print("Add $a + $b = ${add(a, b)}");
    return("Sub $a - $b = ${sub(a, b)}");
}

void main(List<String> args) {
  var a = int.parse(args[0]);
  var b = int.parse(args[1]);
  print(showFunc(a, b));
}