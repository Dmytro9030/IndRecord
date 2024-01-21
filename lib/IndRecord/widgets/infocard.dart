import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ind_records/globalWidget/glow_container.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.title,
    required this.content,
    required this.size,
  });

  final String title;
  final String content;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            title,
            style: const TextStyle(fontSize: 15.5, color: Colors.white38),
          ),
        ),
        const Gap(10),
        SizedBox(
          width: size!.width,
          height: size!.height,
          child: GlowContainer(
            padding: const EdgeInsets.fromLTRB(15, 5, 10, 5),
            child: Text(
              content,
              style: const TextStyle(fontSize: 13.5),
              textAlign: TextAlign.start,
            ),
          ),
        ),
      ],
    );
  }
}
