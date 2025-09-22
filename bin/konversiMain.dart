import 'dart:io';

// ================== DATA KONVERSI ==================
// Semua faktor relatif terhadap unit dasar (Meter, Gram, Liter)
Map<String, double> panjangUnits = {
  "Meter": 1.0,
  "Kilometer": 1000.0,
  "Centimeter": 0.01,
  "Milimeter": 0.001,
  "Inch": 0.0254,
  "Feet": 0.3048
};

Map<String, double> massaUnits = {
  "Gram": 1.0,
  "Kilogram": 1000.0,
  "Miligram": 0.001,
  "Pound": 453.592,
  "Ons": 100.0
};

Map<String, double> volumeUnits = {
  "Liter": 1.0,
  "Mililiter": 0.001,
  "Gallon": 3.78541,
  "Pint": 0.473176,
  "Cubic Meter": 1000.0
};

// ================== FUNGSI KONVERSI ==================

void konversi(String kategori, Map<String, double> units,
    {bool nonNegative = false}) {
  print("\n=== Konversi $kategori ===");
  int i = 1;
  for (var u in units.keys) {
    print("${i++}. $u");
  }

  stdout.write("Pilih unit asal: ");
  int asal = int.parse(stdin.readLineSync()!);
  stdout.write("Pilih unit tujuan: ");
  int tujuan = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan nilai: ");
  double nilai = double.parse(stdin.readLineSync()!);

  if (nonNegative && nilai < 0) {
    print("Error: Nilai tidak boleh negatif!");
    return;
  }

  String unitAsal = units.keys.elementAt(asal - 1);
  String unitTujuan = units.keys.elementAt(tujuan - 1);

  double hasil = (nilai * units[unitAsal]!) / units[unitTujuan]!;

  print("\n$nilai $unitAsal = ${hasil.toStringAsFixed(4)} $unitTujuan");
}

void konversiSuhu() {
  print("\n=== Konversi Suhu ===");
  List<String> units = ["Celsius", "Fahrenheit", "Kelvin", "Reamur", "Rankine"];
  for (int i = 0; i < units.length; i++) {
    print("${i + 1}. ${units[i]}");
  }

  stdout.write("Pilih unit asal: ");
  int asal = int.parse(stdin.readLineSync()!);
  stdout.write("Pilih unit tujuan: ");
  int tujuan = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan nilai: ");
  double nilai = double.parse(stdin.readLineSync()!);

  String unitAsal = units[asal - 1];
  String unitTujuan = units[tujuan - 1];

  double celsius = toCelsius(nilai, unitAsal);
  double hasil = fromCelsius(celsius, unitTujuan);

  print("\n$nilai $unitAsal = ${hasil.toStringAsFixed(2)} $unitTujuan");
}

// Konversi suhu ke Celsius
double toCelsius(double value, String from) {
  switch (from) {
    case "Celsius":
      return value;
    case "Fahrenheit":
      return (value - 32) * 5 / 9;
    case "Kelvin":
      return value - 273.15;
    case "Reamur":
      return value * 5 / 4;
    case "Rankine":
      return (value - 491.67) * 5 / 9;
    default:
      return value;
  }
}

// Konversi suhu dari Celsius ke unit lain
double fromCelsius(double value, String to) {
  switch (to) {
    case "Celsius":
      return value;
    case "Fahrenheit":
      return (value * 9 / 5) + 32;
    case "Kelvin":
      return value + 273.15;
    case "Reamur":
      return value * 4 / 5;
    case "Rankine":
      return (value + 273.15) * 9 / 5;
    default:
      return value;
  }
}

// ================== MAIN PROGRAM ==================

void main() {
  while (true) {
    print("\n=== Aplikasi Konversi Unit ===");
    print("1. Panjang");
    print("2. Massa");
    print("3. Volume");
    print("4. Suhu");
    print("5. Keluar");
    stdout.write("Pilih kategori (1-5): ");
    String? pilihan = stdin.readLineSync();

    switch (pilihan) {
      case "1":
        konversi("Panjang", panjangUnits);
        break;
      case "2":
        konversi("Massa", massaUnits, nonNegative: true);
        break;
      case "3":
        konversi("Volume", volumeUnits, nonNegative: true);
        break;
      case "4":
        konversiSuhu();
        break;
      case "5":
        print("Terima kasih. Program selesai.");
        return;
      default:
        print("Pilihan tidak valid.");
    }
  }
}