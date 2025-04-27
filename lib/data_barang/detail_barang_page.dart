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
    return Scaffold();
  }
}
