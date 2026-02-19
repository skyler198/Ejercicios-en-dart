import 'dart:io';

void main() {
  double saldo = 1000;
  int opcion;
  
  do {
    print("\n---MENÚ BANCARIO---");
    print("1. Consultar saldo");
    print("2. Depositar");
    print("3. Retirar");
    print("4. Salir");
    
    stdout.write("Seleccione opción: ");
    opcion = int.parse(stdin.readLineSync()!);

    switch(opcion) {
      case 1:
        print("Saldo actual: S/. $saldo");
        break;
      case 2:
        stdout.write("Monto a depositar: ");
        double deposito = double.parse(stdin.readLineSync()!);
        saldo += deposito;
        print("Depósito exitoso.");
        break;
      case 3:
        stdout.write("Monto a retirar: ");
        double retiro = double.parse(stdin.readLineSync()!);
        if (retiro <= saldo) {
          saldo -= retiro;
          print("Retiro exitoso-");
        } else {
          print("Fondos insuficientes.");
        }
        break;
    }
  } while (opcion != 4);

  print("Gracias por usar el sistema.");
}