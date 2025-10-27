# Program Konversi Suhu Menggunakan Dart
Program ini merupakan program yang dapat digunakan untuk konversi suhu menggunakan bahasa pemograman Dart. Program ini merupakan percobaan untuk belajar menggunakan bahasa pemograman Dart dalam praktikum Pemograman Web pada Program Studi Informatika Universitas Jenderal Soedirman. 
<br>
# Penjelasan Program
Saat program di run, maka program akan menampilkan sambutan dan opsi konversi yang dapat dipilih 1 sampai 6
```
||==========|| Program Konversi Suhu ||==========||

Kamu mau aku bantu konversi suhu dari apa ke apa sayang?
1. Celcius ke Fahrenheit
2. Celcius ke Kelvin
3. Fahrenheit ke Celcius
4. Fahrenheit ke Kelvin
5. Kelvin ke Celcius
6. Kelvin ke Fahrenheit

Dipilih ya sayang kamu mau yang nomer berapa dari 1 sampai 6:
```
lalu pengguna dapat menentukan koversi apa yang akan dilakukan dan memasukan input ke dalam program dalam bentuk angka antara 1 sampai 8.
Setelah pengguna memberikan input konversi apa yang akan dilakukan, pengguna diminta untuk memasukkan nilai suhu yang akan di konversi. Setelah menentukan konversi apa yang akan dilakukan dan memberikan nilai yang akan dikonversi, maka program akan membaca input pilihan konversi dan disimpan dalam bentuk String
```
String? pilihan = stdin.readLineSync();
```
Lalu untuk nilai konversi suhunya disimpan dalam bentuk double agar dapat menyimpan angka desimal
```
double suhu = double.parse(stdin.readLineSync()!);
```
Setelah data yang dibutuhkan sudah diterima semua, program akan membaca data String pilihan untuk menentukan percabangan if else dan dilakukan perhitungannya>
```
if (pilihan == '1') {
        hasil = (suhu * 9 / 5) + 32;
        print("\nHasil konversi: ${hasil.toStringAsFixed(2)} °F");
    } else if (pilihan == '2') {
        hasil = suhu + 273.15;
        print("\nHasil konversi: ${hasil.toStringAsFixed(2)} K");
    } else if (pilihan == '3') {
        hasil = (suhu - 32) * 5 / 9;
        print("\nHasil konversi: ${hasil.toStringAsFixed(2)} °C");
    } else if (pilihan == '4') {
        hasil = (suhu - 32) * 5 / 9 + 273.15;
        print("\nHasil konversi: ${hasil.toStringAsFixed(2)} K");
    } else if (pilihan == '5') {
        hasil = suhu - 273.15;
        print("\nHasil konversi: ${hasil.toStringAsFixed(2)} °C");
    } else if (pilihan == '6') {
        hasil = (suhu - 273.15) * 9 / 5 + 32;
        print("\nHasil konversi: ${hasil.toStringAsFixed(2)} °F");
    } else {
        print("\nPilihan kamu lebih dari 6 sayang");
```
Setelah program selesai melakukan perhitungannya, maka akan ditampilkan hasil perhitungannya menggunakan tipe data double hasil. dan akan ditutup dengan ucapan terima kasih telah menggunakan program ini.
```
double hasil;
print("\nTerima kasih sayang udah menggunakan program konversi suhu buatan aku ^_^");
```
Program ini juga menggunakan fitur async dan await, tetapi fungsinya hanya untuk mengdelay perhitungannya saja agar terlihat seperti sistem sedang melakukan perhitungan.
```
Future<void> main() async {
  print("||==========|| Program Konversi Suhu ||==========||");
  print("\nKamu mau aku bantu konversi suhu dari apa ke apa sayang?");
  print("1. Celcius ke Fahrenheit");
  print("2. Celcius ke Kelvin");
  print("3. Fahrenheit ke Celcius");
  print("4. Fahrenheit ke Kelvin");
  print("5. Kelvin ke Celcius");
  print("6. Kelvin ke Fahrenheit");
  stdout.write("\nDipilih ya sayang kamu mau yang nomer berapa dari 1 sampai 6: ");
  String? pilihan = stdin.readLineSync();
  stdout.write("Berapa nilai suhu yang mau kamu konversi sayang?: ");
  double suhu = double.parse(stdin.readLineSync()!);
  print("\nTunggu sebentar yah sayang aku hitung dulu....");
  await Future.delayed(Duration(seconds: 3));
```
