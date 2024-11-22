import '0-util.dart';

// Fonction asynchrone qui affiche le nombre d'utilisateurs
Future<void> usersCount() async {
  try {
    int count = await fetchUsersCount(); // Appel à fetchUsersCount
    print(count); // Affiche le nombre d'utilisateurs
  } catch (e) {
    print("Error fetching users count: $e");
  }
}
