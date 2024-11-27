import 'dart:convert'; // Pour jsonDecode
import 'package:http/http.dart' as http; // Pour les requêtes HTTP

Future<void> printRmCharacters() async {
  const String apiUrl = 'https://rickandmortyapi.com/api/character';

  try {
    // Envoyer une requête GET à l'API
    final response = await http.get(Uri.parse(apiUrl));

    // Vérifier si la réponse est réussie
    if (response.statusCode == 200) {
      // Décoder le JSON
      final data = jsonDecode(response.body);
      final characters = data['results'] as List;

      // Afficher le nom de chaque personnage
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      // Gérer les réponses avec des codes d'erreur
      throw Exception('Erreur HTTP : ${response.statusCode}');
    }
  } catch (error) {
    // Gérer les erreurs éventuelles
    print('error caught: $error');
  }
}
