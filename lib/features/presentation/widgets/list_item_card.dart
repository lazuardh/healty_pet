import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItemCard extends StatelessWidget {
  const ListItemCard(
      {super.key,
      required this.images,
      required this.name,
      required this.subtitle,
      required this.distance});

  final String images;
  final String name;
  final String subtitle;
  final String distance;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
                color: const Color(0xFF35385A).withOpacity(.12),
                blurRadius: 30,
                offset: const Offset(0, 2))
          ]),
      child: Row(children: [
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Image.asset(
            images,
            width: 88,
            height: 103,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: GoogleFonts.manrope(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF3F3E3F)),
              ),
              const SizedBox(
                height: 7,
              ),
              RichText(
                  text: TextSpan(
                      text: subtitle,
                      style: GoogleFonts.manrope(
                          fontSize: 12, color: Colors.black))),
              const SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  const Icon(
                    FeatherIcons.mapPin,
                    size: 14,
                    color: Color(0xFFACA3A3),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text("$distance km",
                      style: GoogleFonts.manrope(
                        fontSize: 12,
                        color: const Color(0xFFACA3A3),
                      ))
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  Text(
                    "Available for",
                    style: GoogleFonts.manrope(
                        color: const Color(0xFF50CC98),
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  const Spacer(),
                  SvgPicture.asset('assets/svgs/cat.svg'),
                  const SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset('assets/svgs/dog.svg'),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
