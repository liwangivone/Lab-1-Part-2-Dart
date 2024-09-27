import 'dart:io';
void main() {
  print("Masukkan Jumlah Jam Parkir: ");
  num? lamaParkir = num.parse(stdin.readLineSync()!);

  num tarifPertama = 2000;
  num tarifBerikutnya = 1000;
  num totalParkir;

  if (lamaParkir <= 2) {
    totalParkir = lamaParkir*tarifPertama;
  } else {
    totalParkir = (2 * tarifPertama) + ((lamaParkir - 2) * tarifBerikutnya);
  }

  print("Total Biaya Parkir Selama $lamaParkir jam adalah Rp$totalParkir");

}