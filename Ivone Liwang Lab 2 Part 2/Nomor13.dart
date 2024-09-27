void main() {
  num jumlahMesinCuci = 3;
  num wktMesinCuciPerHari = 2; 
  num jumlahPenghuni = 5;
  num waktuCuciPerPenghuni = 1.5; 

  // Total waktu yang tersedia untuk mencuci dalam sehari
  num totalWaktuTersedia = jumlahMesinCuci * wktMesinCuciPerHari;

  // Hitung jumlah penghuni yang dapat mencuci
  num penghuniDapatMencuci = (totalWaktuTersedia ~/ waktuCuciPerPenghuni).toInt();

  // Tentukan berapa banyak penghuni yang bisa mencuci
  num penghuniYangBisaMencuci = penghuniDapatMencuci < jumlahPenghuni 
      ? penghuniDapatMencuci 
      : jumlahPenghuni;

  // Menampilkan hasil
  print("Jumlah penghuni yang dapat mencuci dalam sehari: $penghuniYangBisaMencuci");
  
}
