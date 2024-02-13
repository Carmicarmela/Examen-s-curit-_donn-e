

# Exo 



library(jsonlite)

# Récupérer les données sur les voies de Massy contenant le terme "Avenue"
data <- fromJSON("https://geo.api.gouv.fr/communes?nom=Massy&fields=departement&boost=population&limit=5")


# Vérifier si la requête a réussi
if (!is.null(data)) {
  # Extraire les noms de voies
  noms_avenue <- data$features$name

  # Vérifier si des noms de voies ont été trouvés
  if (length(noms_avenue) > 0) {
    # Afficher les noms de voies dans la console
    cat("Les voies avec le terme 'Avenue' à Massy sont :\n")
    for (nom in noms_avenue) {
      cat(nom, "\n")
    }
  } else {
    print("Aucune voie avec le terme 'Avenue' n'a été trouvée à Massy.")
  }
} else {
  print("La requête pour les voies de Massy contenant le terme 'Avenue' a échoué.")
}
Print(data)
