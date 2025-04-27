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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Container(
              width: 125,
              height: 125,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              child: ClipOval(
                child: Image.asset(
                  widget.imagePath ?? 'assets/default_image.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              widget.nama ?? "Nama Kosong",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            Text(
              widget.email ?? "Email Kosong",
              style: const TextStyle(fontSize: 14, color: Colors.black87),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 3),
            Text(
              widget.noHp ?? "08112212",
              style: const TextStyle(fontSize: 14, color: Colors.black87),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
