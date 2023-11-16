import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:healtypet_application/features/presentation/utils/colors.dart';
import 'package:healtypet_application/features/presentation/utils/text_style.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyLight,
      appBar: AppBar(
        backgroundColor: greyLight,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Chat",
          style: text1(blackColor, bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message,
                color: primaryColor,
              ))
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            color: accentColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            boxShadow: [
              BoxShadow(
                color: greyMedium,
                offset: Offset(0, 5),
                blurRadius: 0.5,
              )
            ]),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: primaryTransparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(FeatherIcons.search),
                  border: InputBorder.none,
                  hintText: 'Cari',
                  isCollapsed: false,
                  isDense: false,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: greenLight,
                    ),
                    child: Center(child: Text("H")),
                  ),
                  title: Text(
                    "Anonymous",
                    style: text2(blackColor, regular),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    "I miss you, i want you, why you left me, why u ignore me, you know i am destroy since you leave me. ",
                    style: text4(blackColor, regular),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: greenLight,
                    maxRadius: 10,
                    child: Text(
                      "3",
                      style: text4(accentColor, regular),
                    ),
                  ),
                  onTap: () {},
                  dense: true,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
