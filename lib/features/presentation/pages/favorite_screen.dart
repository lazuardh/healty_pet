import 'package:flutter/material.dart';
import 'package:healtypet_application/features/presentation/utils/text_style.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Doctor",
          style: text1(Colors.grey, bold),
        ),
      ),
    );
  }
}
