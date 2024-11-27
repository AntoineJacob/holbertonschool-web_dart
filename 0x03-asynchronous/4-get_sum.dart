import 'dart:convert'; // Pour jsonDecode
import '4-util.dart'; // Importation des fonctions fetchUserData, fetchUserOrders, et fetchProductPrice

// Fonction calculateTotal() : Calcule le prix total des commandes d'un utilisateur
Future<double> calculateTotal() async {
  try {
    // Étape 1 : Récupérer les données utilisateur
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userData);
    String userId = userMap['id'];

    // Étape 2 : Récupérer les commandes de l'utilisateur
    String ordersData = await fetchUserOrders(userId);
    List<dynamic>? orders = jsonDecode(ordersData);

    // Vérification si aucune commande n'est trouvée
    if (orders == null || orders.isEmpty) {
      return 0.0;
    }

    // Étape 3 : Calculer le prix total
    double total = 0.0;
    for (var product in orders) {
      String productPriceData = await fetchProductPrice(product);
      dynamic productPrice = jsonDecode(productPriceData);

      // Conversion explicite de la valeur en double
      total += (productPrice is int ? productPrice.toDouble() : productPrice);
    }

    return total;
  } catch (e) {
    // En cas d'erreur, retourner -1
    print("Erreur attrapée : $e");
    return -1.0;
  }
}
