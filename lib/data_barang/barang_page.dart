import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class BarangPage extends StatefulWidget {
  const BarangPage({super.key});
  @override
  State<BarangPage> createState() => _BarangPageState();
}

class _BarangPageState extends State<BarangPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController tanggalController = TextEditingController();
  final TextEditingController jumlahBarangController = TextEditingController();
  final TextEditingController hargaSatuanController = TextEditingController();

  String? jenisTransaksi;
  String? jenisBarang;

  final List<String> jenisTransaksiOptions = ['Barang Masuk', 'Barang Keluar'];
  final List<String> jenisBarangOptions = [
    'Carrier',
    'Sleeping Bag',
    'Tenda',
    'Sepatu',
  ];

  @override
  void initState() {
    super.initState();
    initializeDateFormatting('id_ID', null);
  }

  String formatTanggalIndonesia(DateTime date) {
    final DateFormat formatter = DateFormat('EEEE, d MMMM yyyy', 'id_ID');
    return formatter.format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
