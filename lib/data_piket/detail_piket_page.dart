import 'package:flutter/material.dart';

class DetailPiketPage extends StatelessWidget {
  final String tugas;
  final String nama;
  final String tanggal;

  const DetailPiketPage({
    super.key, 
    required this.tugas,
    required this.nama,
    required this.tanggal,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1BA0E2),
        elevation: 0,
        title: Text(
          tugas,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        toolbarHeight: 70,
      ),
    );
  }
}