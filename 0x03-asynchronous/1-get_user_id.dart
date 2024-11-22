import 'dart:convert'; // Pour utiliser jsonDecode
import '1-util.dart'; // Importation de fetchUserData

// Fonction pour obtenir l'ID utilisateur
Future<String> getUserId() async {
  try {
    // Récupère les données utilisateur sous forme de chaîne JSON
    String userData = await fetchUserData();

    // Décode la chaîne JSON en Map
    Map<String, dynamic> userMap = jsonDecode(userData);

    // Retourne l'ID de l'utilisateur
    return userMap['id'];
  } catch (e) {
    // Gère les erreurs en cas de problème
    print("Error fetching user ID: $e");
    return ''; // Retourne une chaîne vide en cas d'erreur
  }
}
