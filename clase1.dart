class Persona {
  // Atributos
  String nombre;
  int edad;

  // Constructor
  Persona(this.nombre, this.edad);

  // Función para saludar
  void saludar() {
    print('Hola, mi nombre es $nombre y tengo $edad años.');
  }

  // Función para cumplir años
  void cumplirAnos() {
    edad++;
    print('¡Feliz cumpleaños! Ahora tengo $edad años.');
  }
}
void main() {
  print("Angel Perez Barron Mat: 22308051281086");

  // Crear una instancia de la clase Persona
  Persona persona1 = Persona('Angel Perez', 17);

  // Acceder a los atributos
  print('Nombre: ${persona1.nombre}'); // Salida: Nombre: Juan
  print('Edad: ${persona1.edad}');     // Salida: Edad: 30

  // Llamar a las funciones
  persona1.saludar(); // Salida: Hola, mi nombre es Juan y tengo 30 años.
  persona1.cumplirAnos(); // Salida: ¡Feliz cumpleaños! Ahora tengo 31 años.

  // Verificar la edad después de cumplir años
  print('Edad después de cumplir años: ${persona1.edad}'); // Salida: Edad después de cumplir años: 31
}