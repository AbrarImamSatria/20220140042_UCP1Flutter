import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailBarangPage extends StatelessWidget {
  const DetailBarangPage({
    super.key,
    this.tanggal,
    this.jenisTransaksi,
    this.jenisBarang,
    this.jumlahBarang,
    this.hargaSatuan,
  });

  final String? tanggal;
  final String? jenisTransaksi;
  final String? jenisBarang;
  final String? jumlahBarang;
  final String? hargaSatuan;

  @override
  Widget build(BuildContext context) {
    int jumlah = int.tryParse(jumlahBarang ?? '0') ?? 0;
    int harga =
        int.tryParse(hargaSatuan?.replaceAll(RegExp(r'[^0-9]'), '') ?? '0') ??
        0;
    int totalHarga = jumlah * harga;

    final currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp. ',
      decimalDigits: 0,
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 55),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color(0xFFE8F8EC),
                  borderRadius: BorderRadius.circular(120),
                ),
                child: Center(
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: const Color(0xFF4CAF50),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: const Icon(
                      Icons.check,
                      size: 60,
                      color: Colors.white,
                      weight: 5.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              const Text(
                'Data Berhasil Disimpan',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),


              const SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1BA0E2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  child: const Text(
                    'Selesai',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
