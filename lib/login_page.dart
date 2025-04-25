import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, 
              crossAxisAlignment:
                  CrossAxisAlignment
                      .center, 
              children: [
                const Image(
                  image: AssetImage('assets/images/nike.png'),
                  width: 200, 
                ),
                const SizedBox(height: 16),
                Text(
                  'SELAMAT DATANG KEMBALI',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
