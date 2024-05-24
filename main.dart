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
  double hauteur;
  double largeur;
  double longueur;
  String matiere = "Bois";
  bool extensible;

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
  Table({required this.pieds, required this.hauteur, required this.largeur, required this.longueur, required this.matiere, required this.extensible}){}

  // Méthodes

  void extendTable() {
    if (extensible) {
      this.longueur += 20;
    }
  }

  String carac() {
    return "Salut je suis la table en $matiere. J'ai $pieds pieds, je suis haute de $hauteur cm, longue de $longueur cm ,large de $largeur cm, je suis idéale pour le petit déjeuner";
  }

  void changerPieds(int nouveauNombre) {
    pieds = nouveauNombre;
  }

}

class TableEte extends Table {
  String parasol;

  TypeDeTable type;

  TableEte({
    required this.parasol,
    required this.type,
    required int pieds, 
    required double hauteur, 
    required double largeur, 
    required double longueur, 
    required String matiere, 
    required bool extensible
    }): super(
    pieds : pieds,
    hauteur : hauteur,
    largeur : largeur,
    longueur : longueur,
    matiere : matiere,
    extensible: extensible
  );

  void seProteger() {
    print("On est bien mieux à l'ombre");
  }

  String checkType() {
    switch (type) {
      case TypeDeTable.tableDeJardin: return 'Table de Jardin';
      case TypeDeTable.tableDeSalon: return 'Table de Salon';
      case TypeDeTable.tableAManger: return 'Table à manger';
      case TypeDeTable.tableDePingPong: return 'Table de Ping Pong';

    }
  }
}

enum TypeDeTable {
  tableDeJardin,
  tableDeSalon,
  tableAManger,
  tableDePingPong
}

void main(List<String> args) {

  // var tableIkea = Table(4, 78, 58.9, 140, "Plastique");
  // Table tableIkea = Table(pieds: 1, matiere: "Verre", hauteur: 32, largeur: 60, longueur: 120);
  // print(tableIkea.pieds);
  // tableIkea.hauteur = 80;
  // print(tableIkea.hauteur);
  // tableIkea.largeur = 60;
  // tableIkea.longueur = 120;
  // tableIkea.matiere = "Or";
  // print(tableIkea.matiere);
  // tableIkea.extendTable();
  // tableIkea.changerPieds(8);
  // print(tableIkea.carac());
  // print("J'ai ${tableIkea.pieds} pieds, je suis haute de ${tableIkea.hauteur} cm, longue de ${tableIkea.longueur} cm ,large de ${tableIkea.largeur} cm");

  TableEte ete = TableEte(parasol: "Perrier",type: TypeDeTable.tableDeJardin , pieds: 3, hauteur: 84, largeur: 375, longueur: 375, matiere: "Plastique", extensible: true);

  print(ete.carac());
  ete.seProteger();
  print(ete.checkType());

}