void demoAritmatika() {
  int a = 10, b = 3;
  print("\n--- Operator Aritmatika ---");
  print("$a + $b = ${a + b}");
  print("$a - $b = ${a - b}");
  print("$a * $b = ${a * b}");
  print("$a / $b = ${a / b}");
  print("$a ~/ $b = ${a ~/ b}");
  print("$a % $b = ${a % b}");
}

void demoIncrementDecrement() {
  print("\n--- Operator Increment/Decrement ---");
  int c = 5;
  print("c = $c");
  print("c++ = ${c++} -> c = $c");
  print("++c = ${++c} -> c = $c");
  print("c-- = ${c--} -> c = $c");
  print("--c = ${--c} -> c = $c");
}

void demoRelasional() {
  int a = 10, b = 3;
  print("\n--- Operator Relasional ---");
  print("$a == $b : ${a == b}");
  print("$a != $b : ${a != b}");
  print("$a > $b : ${a > b}");
  print("$a < $b : ${a < b}");
  print("$a >= $b : ${a >= b}");
  print("$a <= $b : ${a <= b}");
}

void demoLogika() {
  print("\n--- Operator Logika ---");
  bool p = true, q = false;
  print("p && q = ${p && q}");
  print("p || q = ${p || q}");
  print("!p = ${!p}");
}

void demoAssignment() {
  print("\n--- Operator Assignment ---");
  int d = 10;
  print("d = $d");
  d += 5;
  print("d += 5 -> $d");
  d *= 2;
  print("d *= 2 -> $d");
  d ~/= 3;
  print("d ~/= 3 -> $d");
}

void demoNullAware() {
  print("\n--- Operator Null-aware ---");
  String? user;
  String namaUser = user ?? "Guest";
  print("Nama user: $namaUser");
  user ??= "Admin";
  print("Setelah ??= : $user");
  print("Panjang user?.length: ${user.length}");
}

void demoTypeTest() {
  print("\n--- Operator Type Test ---");
  double x = 5.5;
  print("x is double : ${x is double}");
  print("x is! int : ${x is! int}");
  dynamic y = "Halo";
  print("y as String -> ${(y as String).toUpperCase()}");
}

void demoTernary() {
  print("\n--- Operator Kondisional (Ternary) ---");
  int nilai = 75;
  String hasil = nilai >= 70 ? "Lulus" : "Gagal";
  print("Nilai $nilai -> $hasil");
}

void demoBitwise() {
  print("\n--- Operator Bitwise ---");
  print("5 & 3 = ${5 & 3}");
  print("5 | 3 = ${5 | 3}");
  print("5 ^ 3 = ${5 ^ 3}");
  print("~5 = ${~5}");
  print("5 << 1 = ${5 << 1}");
  print("5 >> 1 = ${5 >> 1}");
}