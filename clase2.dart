import 'dart:io'; // Para usar stdin.readLineSync() y capturar entrada del usuario

class Empleado {
  // Atributos
  int id_empleado;
  String nombre;
  String apellido;
  String fecha_nacimiento;
  String curp;
  String telefono;
  String horario;
  double sueldo;
  String puesto;

  // Constructor
  Empleado(this.id_empleado, this.nombre, this.apellido, this.fecha_nacimiento, this.curp, this.telefono, this.horario, this.sueldo, this.puesto);

  // Función para capturar datos desde la entrada del usuario
  void captura() {
    print('Ingrese los datos del empleado:');

    stdout.write('ID Empleado: ');
    id_empleado = int.parse(stdin.readLineSync()!);

    stdout.write('Nombre: ');
    nombre = stdin.readLineSync()!;

    stdout.write('Apellido: ');
    apellido = stdin.readLineSync()!;

    stdout.write('Fecha de Nacimiento (dd/mm/aaaa): ');
    fecha_nacimiento = stdin.readLineSync()!;

    stdout.write('CURP: ');
    curp = stdin.readLineSync()!;

    stdout.write('Teléfono: ');
    telefono = stdin.readLineSync()!;

    stdout.write('Horario: ');
    horario = stdin.readLineSync()!;

    stdout.write('Sueldo: ');
    sueldo = double.parse(stdin.readLineSync()!);

    stdout.write('Puesto: ');
    puesto = stdin.readLineSync()!;
  }

  // Función para mostrar los datos del empleado
  void mostrarDatos() {
    print('\nDatos del empleado:');
    print('ID Empleado: $id_empleado');
    print('Nombre: $nombre');
    print('Apellido: $apellido');
    print('Fecha de Nacimiento: $fecha_nacimiento');
    print('CURP: $curp');
    print('Teléfono: $telefono');
    print('Horario: $horario');
    print('Sueldo: \$${sueldo.toStringAsFixed(2)}'); // Formatear sueldo a 2 decimales
    print('Puesto: $puesto');
  }
}

class Cliente {
  // Atributos
  int id_cliente;
  String nombre;
  String apellido;
  String telefono;
  String direccion;
  String correo;

  // Constructor
  Cliente(this.id_cliente, this.nombre, this.apellido, this.telefono, this.direccion, this.correo);

  // Función para capturar datos del cliente
  void captura() {
    print("Ingrese los datos del cliente:");

    stdout.write("ID Cliente: ");
    id_cliente = int.parse(stdin.readLineSync()!);

    stdout.write("Nombre: ");
    nombre = stdin.readLineSync()!;

    stdout.write("Apellido: ");
    apellido = stdin.readLineSync()!;

    stdout.write("Teléfono: ");
    telefono = stdin.readLineSync()!;

    stdout.write("Dirección: ");
    direccion = stdin.readLineSync()!;

    stdout.write("Correo: ");
    correo = stdin.readLineSync()!;
  }

  // Función para mostrar los datos del cliente
  void mostrarDatos() {
    print("\nDatos del cliente:");
    print("ID Cliente: $id_cliente");
    print("Nombre: $nombre");
    print("Apellido: $apellido");
    print("Teléfono: $telefono");
    print("Dirección: $direccion");
    print("Correo: $correo");
  }
}
class Proveedor {
  // Atributos
  int id_proveedor;
  String nombre;
  int id_producto;
  String telefono;
  String direccion;
  String horario;

  // Constructor
  Proveedor(this.id_proveedor, this.nombre, this.id_producto, this.telefono, this.direccion, this.horario);

  // Función para capturar datos desde la consola
  void captura() {
    print("Ingrese el ID del proveedor:");
    id_proveedor = int.parse(stdin.readLineSync()!);

    print("Ingrese el nombre del proveedor:");
    nombre = stdin.readLineSync()!;

    print("Ingrese el ID del producto:");
    id_producto = int.parse(stdin.readLineSync()!);

    print("Ingrese el teléfono del proveedor:");
    telefono = stdin.readLineSync()!;

    print("Ingrese la dirección del proveedor:");
    direccion = stdin.readLineSync()!;

    print("Ingrese el horario del proveedor:");
    horario = stdin.readLineSync()!;
  }

  // Función para mostrar los datos del proveedor
  void mostrarDatos() {
    print("\nDatos del proveedor:");
    print("ID Proveedor: $id_proveedor");
    print("Nombre: $nombre");
    print("ID Producto: $id_producto");
    print("Teléfono: $telefono");
    print("Dirección: $direccion");
    print("Horario: $horario");
  }
}



void main() {
  print("Angel Perez Barron Mat: 22308051281086");

print('\ntabla cliente y sus datos');

  // Crear una instancia de la clase Cliente con valores iniciales
  Cliente cliente1 = Cliente(0, "", "", "", "", "");

  // Llamar a la función captura para ingresar datos
  cliente1.captura();

  // Llamar a la función mostrarDatos para ver los datos ingresados
  cliente1.mostrarDatos();

  print('\ntabla empleado y sus datos');

  // Crear una instancia de la clase Empleado
  Empleado empleado1 = Empleado(0, '', '', '', '', '', '', 0.0, '');

  // Capturar datos del empleado desde la entrada del usuario
  empleado1.captura();

  // Mostrar los datos del empleado
  empleado1.mostrarDatos();

  print('\ntabla proveedor y sus datos');
   // Crear una instancia de la clase Proveedor con valores iniciales
  Proveedor proveedor1 = Proveedor(0, "", 0, "", "", "");

  // Llamar a la función captura para ingresar datos
  print("Captura de datos del proveedor:");
  proveedor1.captura();

  // Llamar a la función mostrarDatos para ver los datos ingresados
  proveedor1.mostrarDatos();
}