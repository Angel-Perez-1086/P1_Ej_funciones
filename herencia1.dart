class Animal {
  // Atributos
  int idAnimal;
  String nombre;
  String raza;

  // Constructor el nombre de la funcion es igual al nombre de la clase animal
  Animal(this.idAnimal, this.nombre, this.raza);

  // Método comer
  void comer() {
    print('$nombre está comiendo.');
  }// fin método comer
}//fin clase Animal

class Perro extends Animal {
  // Constructor el nombre de la funcion es igual al nombre de la clase perro
  Perro(int idAnimal, String nombre, String raza) : super(idAnimal, nombre, raza);

  // Método correr
  void correr() {
    print('$nombre está corriendo.');
  } // fin método correr

  // Método dormir
  void dormir() {
    print('$nombre está durmiendo.');
  }// fin método dormir
}// fin clase Perro

void main() {
    print("Angel Perez Barron Mat: 22308051281086 gpo 6-I");
  // Crear una instancia de Perro
  // nombre del objeto es Perro
  Perro tobi = Perro(1, 'Tobi', 'Pastor Alemán');

  // Usar los métodos de la clase Animal
  tobi.comer();

  // Usar los métodos de la clase Perro
  tobi.correr();
  tobi.dormir();
}