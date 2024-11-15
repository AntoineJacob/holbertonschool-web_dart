class Password {
    String _password;
    Password({required String password}) : _password = password;
    String get password => _password;

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
  final ps = Password(password: "Passwordcode");
  print(ps.toString());
  print(ps.isValid());
  final ps2 = Password(password: "PasswordDecode3");
  print(ps2.toString());
  print(ps2.isValid());
}