import 'dart:io';
void main() {
  print("Masukkan Diameter Lingkaran: ");
  num? diameter = num.parse(stdin.readLineSync()!);

  num radius = diameter * 0.5;
  num luas = 3.14 * radius * radius;

  print("Luas Lingkaran = $luas");
  
}