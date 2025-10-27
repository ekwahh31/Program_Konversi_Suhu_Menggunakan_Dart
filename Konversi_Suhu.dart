import 'dart:io';

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

  double hasil;
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
  }
    print("\nTerima kasih sayang udah menggunakan program konversi suhu buatan aku ^_^");
}
