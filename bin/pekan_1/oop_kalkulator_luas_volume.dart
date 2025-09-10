import 'dart:io';
import 'dart:math';

// Abstract class
abstract class BangunDatar {
  double hitungLuas();
}

abstract class BangunRuang {
  double hitungVolume();
}

/* Kelas Bangun Datar */

// Kelas persegi
class Persegi extends BangunDatar {
  double sisi;
  Persegi(this.sisi);

  @override
  double hitungLuas() => sisi * sisi;
}

// Kelas persegi panjang
class PersegiPanjang extends BangunDatar {
  double panjang, lebar;
  PersegiPanjang(this.panjang, this.lebar);

  @override
  double hitungLuas() => panjang * lebar;
}

// Kelas segitiga
class Segitiga extends BangunDatar {
  double alas, tinggi;
  Segitiga(this.alas, this.tinggi);

  @override
  double hitungLuas() => 0.5 * alas * tinggi;
}

// Kelas lingkaran
class Lingkaran extends BangunDatar {
  double r;
  Lingkaran(this.r);

  @override
  double hitungLuas() => pi * r * r;
}

/* Kelas Bangun Ruang */

// Kelas Kubus
class Kubus extends BangunRuang {
  double sisi;
  Kubus(this.sisi);

  @override
  double hitungVolume() => pow(sisi, 3).toDouble();
}

// Kelas Balok
class Balok extends BangunRuang {
  double panjang, lebar, tinggi;
  Balok(this.panjang, this.lebar, this.tinggi);

  @override
  double hitungVolume() => panjang * lebar * tinggi;
}

// Kelas Prisma Segitiga
class PrismaSegitiga extends BangunRuang {
  double alas, tA, tP;
  PrismaSegitiga(this.alas, this.tA, this.tP);

  @override
  double hitungVolume() => (0.5 * alas * tA) * tP;
}

// Kelas Limas
class Limas extends BangunRuang {
  double panjangAlas, lebarAlas, tinggi;
  Limas(this.panjangAlas, this.lebarAlas, this.tinggi);

  @override
  double hitungVolume() => (panjangAlas * lebarAlas * tinggi) / 3;
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

// Menu Bangun Datar
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
        stdout.write("Masukkan sisi: ");
        double sisi = double.parse(stdin.readLineSync()!);
        var persegi = Persegi(sisi);
        print("Luas Persegi = ${persegi.hitungLuas()}");
        break;
      case '2':
        stdout.write("Masukkan panjang: ");
        double p = double.parse(stdin.readLineSync()!);
        stdout.write("Masukkan panjang: ");
        double l = double.parse(stdin.readLineSync()!);
        var persegiPanjang = PersegiPanjang(p, l);
        print("Luas Persegi Panjang = ${persegiPanjang.hitungLuas()}");
        break;
      case '3':
        stdout.write("Masukkan alas: ");
        double a = double.parse(stdin.readLineSync()!);
        stdout.write("Masukkan tinggi: ");
        double t = double.parse(stdin.readLineSync()!);
        var segitiga = Segitiga(a, t);
        print("Luas Segitiga = ${segitiga.hitungLuas()}");
        break;
      case '4':
        stdout.write("Masukkan sisi: ");
        double sisi = double.parse(stdin.readLineSync()!);
        var persegi = Persegi(sisi);
        print("Luas Persegi = ${persegi.hitungLuas()}");
        break;
      default:
    }
  }
}

// Menu Bangun Ruang
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
        stdout.write("Masukkan sisi: ");
        double sisi = double.parse(stdin.readLineSync()!);
        var kubus = Kubus(sisi);
        print("Volume kubus = ${kubus.hitungVolume()}");
        break;
      case '2':
        stdout.write("Masukkan panjang: ");
        double p = double.parse(stdin.readLineSync()!);
        stdout.write("Masukkan lebar: ");
        double l = double.parse(stdin.readLineSync()!);
        stdout.write("Masukkan tinggi: ");
        double t = double.parse(stdin.readLineSync()!);
        var balok = Balok(p, l, t);
        print("Volume kubus = ${balok.hitungVolume()}");
        break;
      case '3':
        stdout.write("Masukkan alas: ");
        double a = double.parse(stdin.readLineSync()!);
        stdout.write("Masukkan tinggi alas: ");
        double tA = double.parse(stdin.readLineSync()!);
        stdout.write("Masukkan tinggi prisma: ");
        double tP = double.parse(stdin.readLineSync()!);
        var prismaSegitiga = PrismaSegitiga(a, tA, tP);
        print("Volume kubus = ${prismaSegitiga.hitungVolume()}");
        break;
      case '4':
        stdout.write("Masukkan panjang alas: ");
        double pa = double.parse(stdin.readLineSync()!);
        stdout.write("Masukkan lebar alas: ");
        double la = double.parse(stdin.readLineSync()!);
        stdout.write("Masukkan tinggi: ");
        double t = double.parse(stdin.readLineSync()!);
        var limas = Limas(pa, la, t);
        print("Volume kubus = ${limas.hitungVolume()}");
        break;
      case '0':
        return;
      default:
        print("Pilihan tidak valid!");
    }
  }
}
