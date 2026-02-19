import 'dart:io';

double calcularPromedio(List<double> notas){
  return notas.reduce((a, b) => a + b) / notas.length;
}

void main(){
  stdout.write("¿Cuántas notas desea ingresar? ");
  int n = int.parse(stdin.readLineSync()!);

  List<double> notas = [];
  for (int i = 0; i < n; i++){
    while(true){
      stdout.write("Ingrese nota ${i + 1} (0-20) ");
      double nota = double.parse(stdin.readLineSync()!);
      if(nota >= 0 && nota <= 20){
        notas.add(nota);
        break;
      } else {
        print("Nota inválida. Intente nuevamente.");
      }
    }
  }

  double promedio = calcularPromedio(notas);
  double maxNota = notas.reduce((a, b) => a > b ? a : b);
  double minNota = notas.reduce((a, b) => a < b ? a : b);

  print("\nPromedio: $promedio");
  print("Notas más alta: $maxNota");
  print("Nota más baja $minNota");
}