int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  // Calcul des points pour Team A
  int teamAPoints = (teamA['Free throws'] ?? 0) * 1 + 
                    (teamA['2 pointers'] ?? 0) * 2 + 
                    (teamA['3 pointers'] ?? 0) * 3;
  
  // Calcul des points pour Team B
  int teamBPoints = (teamB['Free throws'] ?? 0) * 1 + 
                    (teamB['2 pointers'] ?? 0) * 2 + 
                    (teamB['3 pointers'] ?? 0) * 3;
  
  // Comparaison des scores et retour du résultat
  if (teamAPoints > teamBPoints) {
    return 1; // Team A gagne
  } else if (teamAPoints < teamBPoints) {
    return 2; // Team B gagne
  } else {
    return 0; // Match nul
  }
}

main() {
  var teamA = {'Free throws' : 23, '2 pointers' : 32, '3 pointers': 16};
  var teamB = {'Free throws' : 31, '2 pointers' : 27, '3 pointers': 13};

  print(whoWins(teamA, teamB));
}