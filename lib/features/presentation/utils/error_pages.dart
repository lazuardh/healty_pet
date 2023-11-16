import 'package:flutter/material.dart';

class ErrorPages extends StatelessWidget {
  const ErrorPages({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("terjadi kesalahan"),
        ),
      ),
    );
  }
}
