import 'package:flutter/material.dart';
import 'package:healtypet_application/features/presentation/utils/text_style.dart';
import 'package:healtypet_application/features/presentation/widgets/list_item_card.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Doctor",
          style: text1(Colors.black, bold),
        ),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, index) {
        return const Padding(
          padding: EdgeInsets.all(8.0),
          child: ListItemCard(
              images: "assets/images/Dr. Stone.jpg",
              name: "Dr. Strangger",
              subtitle: "Service Vacine Surgey",
              distance: "20"),
        );
      }),
    );
  }
}
