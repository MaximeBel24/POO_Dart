// POO tout est un objet 
// Exemple: Widget, Text, Notre Post dans l'app Facebook... String ou int aussi...
// Va avoir les mêmes attributs et méthodes avec des valeurs qui peuvent être différentes
// Réplicable à l'infini 
// Ex: Une table
// - Attributs: Pieds
// -            Plateau
// -            Hauteur
// -            Largeur
// -            Longueur
// -            Matière
//
// Même chose pour un post, un utilisateur par exemple sur Instagram 

class Table {

  // Atrributs

  int pieds = 4;
  double? hauteur;
  double? largeur;
  double? longueur;
  String matiere = "Bois";

  // Constructeur

  // Façon 1 (longue)

  // Table(int pieds, double hauteur, double largeur, double longueur, String matiere)
  // {
  //   this.pieds = pieds;
  //   this.hauteur = hauteur;
  //   this.largeur = largeur;
  //   this.longueur = longueur;
  //   this.matiere = matiere;
  // }


  // Façon 2 (rapide)

  // Table(this.pieds, this.hauteur, this.largeur, this.longueur, this.matiere);


  // Façon 3 (noms des Attributs)

  // Table({this.pieds = 3, this.hauteur, this.largeur, this.longueur = 120, this.matiere = "Or"});


  // Façons 4 (avec attributs required)
  Table({required this.pieds, required this.hauteur, required this.largeur, required this.longueur, required this.matiere}){}

  // Méthodes

}

void main(List<String> args) {

  // var tableIkea = Table(4, 78, 58.9, 140, "Plastique");
  Table tableIkea = Table(pieds: 1, matiere: "Verre", hauteur: 32, largeur: 60, longueur: 120);
  // print(tableIkea.pieds);
  // tableIkea.hauteur = 80;
  // print(tableIkea.hauteur);
  // tableIkea.largeur = 60;
  // tableIkea.longueur = 120;
  // tableIkea.matiere = "Or";
  // print(tableIkea.matiere);
  print("Ma table a ${tableIkea.pieds} pieds, est haute de ${tableIkea.hauteur} cm, longue de ${tableIkea.longueur} cm ,large de ${tableIkea.largeur} cm et est faite en ${tableIkea.matiere}");
  

}