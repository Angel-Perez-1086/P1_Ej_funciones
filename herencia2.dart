import 'dart:io';
// Clase Inventario
class Inventario {
  int id_inventario;
  int id_producto;
  int stock_producto;
  int id_sucursal;
  double precio_unitario;
  DateTime fecha_entrada;
  DateTime fecha_salida;

  Inventario({
    required this.id_inventario,
    required this.id_producto,
    required this.stock_producto,
    required this.id_sucursal,
    required this.precio_unitario,
    required this.fecha_entrada,
    required this.fecha_salida,
  });

  void capturarDatos() {
    print("Ingrese el ID del inventario:");
    id_inventario = int.parse(stdin.readLineSync()!);

    print("Ingrese el ID del producto:");
    id_producto = int.parse(stdin.readLineSync()!);

    print("Ingrese el stock del producto:");
    stock_producto = int.parse(stdin.readLineSync()!);

    print("Ingrese el ID de la sucursal:");
    id_sucursal = int.parse(stdin.readLineSync()!);

    print("Ingrese el precio unitario del producto:");
    precio_unitario = double.parse(stdin.readLineSync()!);

    print("Ingrese la fecha de entrada (YYYY-MM-DD):");
    fecha_entrada = DateTime.parse(stdin.readLineSync()!);

    print("Ingrese la fecha de salida (YYYY-MM-DD):");
    fecha_salida = DateTime.parse(stdin.readLineSync()!);
  }

  void mostrarDatos() {
    print("ID Inventario: $id_inventario");
    print("ID Producto: $id_producto");
    print("Stock Producto: $stock_producto");
    print("ID Sucursal: $id_sucursal");
    print("Precio Unitario: $precio_unitario");
    print("Fecha de Entrada: $fecha_entrada");
    print("Fecha de Salida: $fecha_salida");
  }
}
// clase tabla proveedores
class DatosProveedores extends Inventario {
  int id_proveedor;
  String nombre;
  String telefono;
  String direccion;
  String horario;

  DatosProveedores({
    required this.id_proveedor,
    required this.nombre,
    required this.telefono,
    required this.direccion,
    required this.horario,
    required int id_inventario,
    required int id_producto,
    required int stock_producto,
    required int id_sucursal,
    required double precio_unitario,
    required DateTime fecha_entrada,
    required DateTime fecha_salida,
  }) : super(
          id_inventario: id_inventario,
          id_producto: id_producto,
          stock_producto: stock_producto,
          id_sucursal: id_sucursal,
          precio_unitario: precio_unitario,
          fecha_entrada: fecha_entrada,
          fecha_salida: fecha_salida,
        );

  @override
  void capturarDatos() {
    super.capturarDatos();

    print("Ingrese el ID del proveedor:");
    id_proveedor = int.parse(stdin.readLineSync()!);

    print("Ingrese el nombre del proveedor:");
    nombre = stdin.readLineSync()!;

    print("Ingrese el teléfono del proveedor:");
    telefono = stdin.readLineSync()!;

    print("Ingrese la dirección del proveedor:");
    direccion = stdin.readLineSync()!;

    print("Ingrese el horario del proveedor:");
    horario = stdin.readLineSync()!;
  }

  @override
  void mostrarDatos() {
    super.mostrarDatos();
    print(" datos del proveedor");
    print("ID Proveedor: $id_proveedor");
    print("Nombre Proveedor: $nombre");
    print("Teléfono Proveedor: $telefono");
    print("Dirección Proveedor: $direccion");
    print("Horario Proveedor: $horario");
  }
}

void main() {
      print("Angel Perez Barron Mat: 22308051281086 gpo 6-I");

  DatosProveedores proveedor = DatosProveedores(
    id_proveedor: 0,
    nombre: '',
    telefono: '',
    direccion: '',
    horario: '',
    id_inventario: 0,
    id_producto: 0,
    stock_producto: 0,
    id_sucursal: 0,
    precio_unitario: 0.0,
    fecha_entrada: DateTime.now(),
    fecha_salida: DateTime.now(),
  );

  proveedor.capturarDatos();
  print("\nDatos del inventario:");
  proveedor.mostrarDatos();
}