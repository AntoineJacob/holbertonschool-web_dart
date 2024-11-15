class Password {
  String _password;

  // Constructeur avec une vérification null
  Password({String? password}) : _password = password ?? ''; // Utilise '' comme valeur par défaut si `password` est null

  String get password => _password;

  void set password(String password) {
    _password = password;
  }

  bool isValid() {
    // Vérifie si le mot de passe n'est pas null et a une longueur adéquate
    if (_password.isNotEmpty && _password.length >= 8 && _password.length <= 16) {
      // Vérification des exigences de la validité du mot de passe
      if (_password.contains(RegExp(r'[A-Z]')) &&
          _password.contains(RegExp(r'[a-z]')) &&
          _password.contains(RegExp(r'[0-9]'))) {
        return true;
      }
    }

    return false;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
