import 'dart:io';
void main() {
  print("Masukkan Suhu dalam Celsius: ");
  num? suhuCelsius = num.parse(stdin.readLineSync()!);

  num suhuFahrenheit = (1.8 * suhuCelsius) + 32;

  print("Suhu setelah dikonversi ke Fahrenheit: $suhuFahrenheit F");

}