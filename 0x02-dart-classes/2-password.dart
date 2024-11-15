class Password {
    String password = '';

    bool isValid() {
        if (this.password.length >= 8 && this.password.length <= 16) {
            if (this.password.contains(RegExp(r'[A-Z]')) && this.password.contains(RegExp(r'[a-z]')))
            {
                if (this.password.contains(RegExp(r'[0-9]'))) {
                    return true;
                }
            }
        }

        return false;
    }
    @override
    String toString() {
        return 'Your Password is: ${this.password}';
    }
}

void main() {
  final ps = Password();
  ps.password = "Just3z";
  if (ps.isValid() == true)
    print("${ps.password} is a Valid Password");
  else
    print("${ps.password} is Not a Valid Password");
  print("${ps.toString()}");
  ps.password = "ShouldWorkf7ne";
  if (ps.isValid() == true)
    print("${ps.password} is a Valid Password");
  else
    print("${ps.password} is Not a Valid Password");
  print("${ps.toString()}");
}