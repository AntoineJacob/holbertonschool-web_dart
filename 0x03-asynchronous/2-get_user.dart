import '2-util.dart'; // Importation de fetchUser()

// Fonction pour obtenir et afficher les données utilisateur
Future<void> getUser() async {
  try {
    // Appel de la fonction fetchUser()
    String userData = await fetchUser();
    print(userData);
  } catch (e) {
    // Gestion des erreurs
    print('error caught: $e');
  }
}
