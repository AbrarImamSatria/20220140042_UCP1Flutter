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
    return Scaffold();
  }
}
