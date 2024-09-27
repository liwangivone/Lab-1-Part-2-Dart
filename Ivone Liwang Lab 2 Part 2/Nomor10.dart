void main() {
  // Daftar nasabah yang datang
  List<String> nasabah = ['A', 'B', 'C', 'D', 'E'];

  // Simulasi antrian dengan dua loket
  for (int i = 0; i < nasabah.length; i++) {
    // Tentukan loket berdasarkan urutan
    String loket = (i % 2 == 0) ? 'Loket 1' : 'Loket 2';

    print('Nasabah ${nasabah[i]} dilayani di $loket');
  }
  
}
