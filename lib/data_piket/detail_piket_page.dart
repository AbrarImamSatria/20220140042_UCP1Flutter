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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tanggal, // Menggunakan tanggal dari PiketPage
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1BA0E2),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                      color: Color(0xFF1BA0E2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      nama, // Menggunakan nama dari PiketPage
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              padding: const EdgeInsets.all(17),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF1BA0E2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                tugas, // Menggunakan tugas dari PiketPage
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            // Area kosong untuk konten tambahan jika diperlukan
            const SizedBox(height: 500),
          ],
        ),
      ),
    );
  }
}