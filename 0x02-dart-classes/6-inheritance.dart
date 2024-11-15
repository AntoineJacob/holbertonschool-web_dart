import '6-password.dart';

class User {
  int id;
  String name;
  int age;
  double height;
  Password userPassword;

  // Constructeur qui prend un mot de passe sous forme de chaîne
  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required String user_password,
  }) : userPassword = Password(password: user_password); // Utilisation de la classe Password

  // Méthode pour convertir l'objet en une Map (représentation JSON)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      // Ne pas inclure le mot de passe dans le JSON
    };
  }

  // Méthode statique pour créer un objet User à partir d'une Map
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'] ?? 0,
      name: userJson['name'] ?? '',
      age: userJson['age'] ?? 0,
      height: userJson['height']?.toDouble() ?? 0.0,
      user_password: userJson['user_password'] ?? '', // Extraire le mot de passe de la Map
    );
  }

  // Méthode pour retourner une chaîne descriptive
  @override
  String toString() {
    return 'User(id : $id , name: $name, age: $age, height: $height, Password: ${userPassword.isValid()})';
  }
}

void main() {
  // Création d'un utilisateur avec un mot de passe valide
  final djo = User(
    id: 1,
    name: "Djo",
    age: 25,
    height: 1.89,
    user_password: "Azert23defde",
  );

  print('<===========Json=========>:');
  print('\n');
  print(djo.toJson());  // Affichage JSON sans mot de passe

  Map map = {
    'id': 3,
    'name': 'Youssef',
    'age': 26,
    'height': 1.9,
    'user_password': "Azert23defde",  // Mot de passe valide
  };

  final youssef = User.fromJson(map);

  print('\n');
  print('<===========Test1===========>:');
  print('\n');
  print(djo.toString());  // Affiche Password: true
  print(youssef.toString());  // Affiche Password: true
  print('\n');

  print('<===========Test2===========>:');
  print('\n');
  // Modification des mots de passe
  djo.userPassword.password = "short";  // Mot de passe invalide
  youssef.userPassword.password = "AZERfghn6789";  // Mot de passe valide
  print(djo.toString());  // Affiche Password: false
  print(youssef.toString());  // Affiche Password: true
}
