import 'dart:io';
import 'dart:math';

/* Fungsi Bangun Datar */

// luas Persegi
void hitungLuasPersegi() {
  stdout.write("Masukkan sisi persegi: ");
  double sisi = double.parse(stdin.readLineSync()!);
  double luas = sisi * sisi;
  print("Luas Persegi : $luas");
}

// Luas Persegi Panjang
void hitungLuasPersegiPanjang() {
  stdout.write("Masukkan panjang persegi panjang: ");
  double panjang = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan lebar persegi panjang: ");
  double lebar = double.parse(stdin.readLineSync()!);
  double luas = panjang * lebar;
  print("Luas Persegi : $luas");
}

// Luas Segitiga
void hitungLuasSegitiga() {
  stdout.write("Masukkan alas segitiga: ");
  double alas = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan tinggi persegi panjang: ");
  double tinggi = double.parse(stdin.readLineSync()!);
  double luas = 0.5 * alas * tinggi;
  print("Luas Persegi : $luas");
}

// Luas Lingkaran
void hitungLuasLingkaran() {
  stdout.write("Masukkan jari2 lingkaran: ");
  double r = double.parse(stdin.readLineSync()!);
  double luas = pi * r * r;
  print("Luas Persegi : $luas");
}

/*Fungsi Bangun Ruang */

// Volume Kubus
void hitungVolumeKubus() {
  stdout.write("Masukkan sisi kubus: ");
  double sisi = double.parse(stdin.readLineSync()!);
  double volume = pow(sisi, 3).toDouble();
  print("Volume Kubus = $volume");
}

// Volume Balok
void hitungVolumeBalok() {
  stdout.write("Masukkan panjang balok: ");
  double panjang = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan lebar balok: ");
  double lebar = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan tinggi balok: ");
  double tinggi = double.parse(stdin.readLineSync()!);
  double volume = panjang * lebar * tinggi;
  print("Volume Kubus = $volume");
}

// Volume Prisma Segitiga
void hitungVolumePrismaSegitiga() {
  stdout.write("Masukkan alas segitiga: ");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan tinggi segitiga: ");
  double tA = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan tinggi prisma: ");
  double tP = double.parse(stdin.readLineSync()!);
  double luasAlas = 0.5 * a * tA;
  double volume = luasAlas * tP;
  print("Volume Kubus = $volume");
}

// Volume Limas
void hitungVolumeLimas() {
  stdout.write("Masukkan panjang alas: ");
  double p = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan lebar alas: ");
  double l = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan tinggi limas: ");
  double t = double.parse(stdin.readLineSync()!);
  double luasAlas = p * l;
  double volume = (luasAlas * t) / 3;
  print("Volume Kubus = $volume");
}

/* Dashboard Menu Utama */
void main() {
  while (true) {
    print("\n=== Aplikasi Hitung Bangun ===");
    print("1. Bangun Datar");
    print("2. Bangun Ruang");
    print("3. Keluar");
    stdout.write("Pilih menu: ");
    String? pilihan = stdin.readLineSync();

    switch (pilihan) {
      case '1':
        menuBangunDatar();
        break;
      case '2':
        menuBangunRuang();
        break;
      case '3':
        print("Terimakasih sudah menggunakan aplikasi ini!");
        exit(0);
      default:
        print("Pilihan tidak valid!");
    }
  }
}

// Sub Menu Bangun Datar
void menuBangunDatar() {
  while (true) {
    print("\n=== Menu Bangun Datar ===");
    print("1. Luas Persegi");
    print("2. Luas Persegi Panjang");
    print("3. Luas Segitiga");
    print("4. Luas Lingkaran");
    print("0. Kembali");
    stdout.write("Pilih menu: ");
    String? pilihan = stdin.readLineSync();

    switch (pilihan) {
      case '1':
        hitungLuasPersegi();
        break;
      case '2':
        hitungLuasPersegiPanjang();
        break;
      case '3':
        hitungLuasSegitiga();
        break;
      case '4':
        hitungLuasLingkaran();
        break;
      case '0':
        return;
      default:
        print("Pilihan tidak valid!");
    }
  }
}

// Sub Menu Bangun Ruang
void menuBangunRuang() {
  while (true) {
    print("\n=== Menu Bangun Ruang ===");
    print("1. Volume Kubus");
    print("2. Volume Balok");
    print("3. Volume Prisma Segitiga");
    print("4. Volume Limas");
    print("0. Kembali");
    stdout.write("Pilih menu: ");
    String? pilihan = stdin.readLineSync();

    switch (pilihan) {
      case '1':
        hitungVolumeKubus();
        break;
      case '2':
        hitungVolumeBalok();
        break;
      case '3':
        hitungVolumePrismaSegitiga();
        break;
      case '4':
        hitungVolumeLimas();
        break;
      case '0':
        return;
      default:
        print("Pilihan tidak valid!");
    }
  }
}
