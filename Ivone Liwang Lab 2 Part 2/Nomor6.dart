import 'dart:io';
void main() {
  print("Masukkan JUmlah Jam Kerja per Minggu: ");
  num? jam = num.parse(stdin.readLineSync()!);

  num gajiPokok = 4000000;
  num bonus = 200000;
  num gajiTotal;

  if (jam <= 40) {
    gajiTotal = (gajiPokok * 0.25) * jam;

  } else {
    gajiTotal = (gajiPokok * 0.25 * jam) + bonus;

  }

  print("Total Gaji Karyawan Selama $jam jam adalah Rp$gajiTotal");

}