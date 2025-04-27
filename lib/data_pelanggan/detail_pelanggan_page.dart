import 'package:flutter/material.dart';

class DetailPelangganPage extends StatefulWidget {
  final String? nama;
  final String? email;
  final String? noHp;
  final String? alamat;
  final String? provinsi;
  final String? kodePos;
  final String? imagePath;

  const DetailPelangganPage({
    super.key,
    this.nama,
    this.email,
    this.noHp,
    this.alamat,
    this.provinsi,
    this.kodePos,
    this.imagePath,
  });

  @override
  State<DetailPelangganPage> createState() => _DetailPelangganPageState();
}

class _DetailPelangganPageState extends State<DetailPelangganPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1BA0E2),
        elevation: 0,
        title: Text(
          'Detail ${widget.nama ?? ""}',
          style: const TextStyle(
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
