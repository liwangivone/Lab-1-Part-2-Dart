import 'dart:io';
void main() {
  print("Masukkan Nama Pelanggan: ");
  String? namaPelanggan = stdin .readLineSync();

  print("Selamat Datang $namaPelanggan!, Silahkan Masukkan Jumlah Apel (kg): ");
  num? jumlahApel = num.parse(stdin.readLineSync()!);

  print("Masukkan Jumlah Jeruk (kg): ");
  num? jumlahJeruk = num.parse(stdin.readLineSync()!);

  num hargaApel = 5000;
  num hargaJeruk = 4000;

  num totalHarga = (jumlahApel * hargaApel) + (jumlahJeruk * hargaJeruk);

  print("Total Harga yang Harus Dibayar oleh $namaPelanggan adalah Rp $totalHarga");

}