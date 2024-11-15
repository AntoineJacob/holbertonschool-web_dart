class Password {

  String _password;
  Password({required String password}) : _password = password;
  
  String get password => _password;

   void set password(String password) {
    this._password = password;
  }

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
  final password = Password(password: "Passwordecode");
  print(password.isValid());
  print(password.toString());
  password.password = "Youssef4321";
  print(password.isValid());
  print(password.toString());
}