void main() {
  num wattAC = 1.5;
  num wattTV = 0.2;
  num wattLampu = 0.1;
  num lamaAC = 8;
  num lamaTV = 5;
  num lamaLampu = 12;

  num totalAC = wattAC*lamaAC;
  num totalTV = wattTV*lamaTV;
  num totalLampu = wattLampu*lamaLampu;
  num totalEnergi = totalAC + totalTV + totalLampu;

  print("Total Konsumsi Energi Harian Keluarga tersebut adalah $totalEnergi kWh");

}