class Password {

  String _password;
  Password({required String password}) : _password = password;
  String get password => _password;

  bool isValid() {
     return ((password.length >= 8) &&
     (password.length <= 16)) &&
        this.password.contains(new RegExp(r"[A-Z]"))
	&& this.password.contains(new RegExp(r"[a-z]"))
	&& this.password.contains(new RegExp(r"[0-9]"));
  }

  @override
  String toString() => "Your Password is: ${this.password}";
}

void main() {
  final ps = Password(password: "Passwordcode");
  print(ps.toString());
  print(ps.isValid());
  final ps2 = Password(password: "PasswordDecode3");
  print(ps2.toString());
  print(ps2.isValid());
}
