import 'dart:convert'; // Pour jsonDecode
import '4-util.dart'; // Importation des fonctions fetchUserData, fetchUserOrders, et fetchProductPrice

// Fonction calculateTotal() : Calcule le prix total des commandes d'un utilisateur
Future<double> calculateTotal() async {
  try {
    // Obtenez les données utilisateur
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userData);
    String userId = userMap['id'];

    // Obtenez les commandes de l'utilisateur
    String ordersData = await fetchUserOrders(userId);
    List<dynamic>? orders = jsonDecode(ordersData);

    // Si les commandes sont nulles ou vides, le total est 0
    if (orders == null || orders.isEmpty) {
      return 0.0;
    }

    // Calculez le prix total des produits
    double total = 0.0;
    for (String product in orders) {
      String productPriceData = await fetchProductPrice(product);
      double productPrice = jsonDecode(productPriceData);
      total += productPrice;
    }

    return total;
  } catch (e) {
    // En cas d'erreur, retourner -1
    return -1.0;
  }
}
