class User {
  String name;
  int age;
  double height;

  // Constructeur avec paramètres nommés requis
  User({required this.name, required this.age, required this.height});

  // Méthode pour convertir l'objet en une Map (représentation JSON)
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'height': height,
    };
  }
}

// Fonction principale
void main() {
  // Création d'une instance de User
  final user = User(name: "Youssef", age: 25, height: 1.89);

  // Impression de la représentation JSON de l'utilisateur
  print(user.toJson()); // {name: Youssef, age: 25, height: 1.89}
}
