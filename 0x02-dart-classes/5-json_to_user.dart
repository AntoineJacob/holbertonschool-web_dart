class User {
  int id;
  String name;
  int age;
  double height;

  // Constructeur avec paramètres nommés requis
  User({required this.id, required this.name, required this.age, required this.height});

  // Méthode pour convertir l'objet en une Map (représentation JSON)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  // Méthode statique pour créer un objet User à partir d'une Map
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'] ?? 0,
      name: userJson['name'] ?? '',
      age: userJson['age'] ?? 0,
      height: userJson['height']?.toDouble() ?? 0.0,
    );
  }

  // Méthode pour retourner une chaîne descriptive
  @override
  String toString() {
    return 'User(id : $id ,name: $name,  age: $age, height: $height)';
  }
}

void main() {
  // Création d'une instance User
  final djo = User(id: 1, name: "Djo", age: 25, height: 1.89);
  print(djo.toJson()); // Affichera : {id: 1, name: Djo, age: 25, height: 1.89}

  // Création d'un utilisateur depuis une Map
  Map map = {'id': 3, 'name': 'Youssef', 'age': 26, 'height': 1.9};
  final youssef = User.fromJson(map);

  // Impression des utilisateurs
  print(djo.toString());    // User(id : 1 ,name: Djo,  age: 25, height: 1.89)
  print(youssef.toString()); // User(id : 3 ,name: Youssef,  age: 26, height: 1.9)
}
