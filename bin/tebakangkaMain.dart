import 'dart:io';
import 'dart:math';

void main() {
  Random rand = Random();
  int target = rand.nextInt(100) + 1; // angka acak 1–100
  int? tebakan;
  int percobaan = 0;
  bool ketemu = false;

  print("=== Game Tebak Angka ===");
  print("Saya sudah memilih angka antara 1 sampai 100.");
  print("Coba tebak!");

  // gunakan perulangan while
  while (!ketemu) {
    stdout.write("Masukkan tebakan Anda: ");
    tebakan = int.tryParse(stdin.readLineSync()!);
    percobaan++;

    // percabangan if-else
    if (tebakan == null) {
      print("Input tidak valid, coba lagi.");
    } else if (tebakan == target) {
      print("Selamat! Anda berhasil menebak dalam $percobaan percobaan.");
      ketemu = true;
    } else if (tebakan < target) {
      print("Terlalu kecil, coba lagi.");
    } else {
      print("Terlalu besar, coba lagi.");
    }
  }
}
