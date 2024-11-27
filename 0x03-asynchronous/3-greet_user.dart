import 'dart:convert'; // Pour jsonDecode
import '3-util.dart'; // Importation de fetchUserData() et checkCredentials()

// Fonction greetUser() : Retourne un message d'accueil avec le nom d'utilisateur
Future<String> greetUser() async {
  try {
    // Appel de la fonction fetchUserData() pour obtenir les données utilisateur
    String userData = await fetchUserData();

    // Décodage des données JSON en une Map
    Map<String, dynamic> userMap = jsonDecode(userData);

    // Retourne le message d'accueil avec le nom d'utilisateur
    return 'Hello ${userMap['username']}';
  } catch (e) {
    // En cas d'erreur, retourne le message d'erreur
    return 'error caught: $e';
  }
}

// Fonction loginUser() : Gère la connexion et retourne un message approprié
Future<String> loginUser() async {
  try {
    // Vérifie les identifiants via checkCredentials()
    bool isAuthenticated = await checkCredentials();

    // Affiche l'état de l'utilisateur
    print('There is a user: $isAuthenticated');

    if (isAuthenticated) {
      // Si les identifiants sont valides, retourne le message de greetUser()
      return await greetUser();
    } else {
      // Si les identifiants ne sont pas valides, retourne un message d'erreur
      return 'Wrong credentials';
    }
  } catch (e) {
    // En cas d'erreur, retourne le message d'erreur
    return 'error caught: $e';
  }
}
