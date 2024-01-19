import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:ind_records/globalWidget/glow_container.dart';
import 'package:ind_records/screens/me.dart';

class IndRecordingPage extends StatelessWidget {
  const IndRecordingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/svgs/settings.svg',
              width: 24,
              height: 24,
              fit: BoxFit.scaleDown,
            ),
            Text('ME'),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 100,
                    offset: const Offset(0, 4),
                    color: const Color(0xFF7EF6F0).withOpacity(.5),
                  )
                ],
                color: const Color(0xFF010314),
                borderRadius: BorderRadius.circular(42),
                border: const Border(
                  top: BorderSide(color: Color(0xFF7EF6F0), width: 1),
                  bottom: BorderSide(color: Color(0xFF7EF6F0), width: 3),
                ),
              ),
              child: Column(
                children: [
                  GlowContainer(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.play_arrow),
                        Image.asset('assets/images/sound_wave.png')
                      ],
                    ),
                  ),
                  const Gap(20),
                  const Text(
                      'Summary for IndRecord will be here as simple text which you can copy/paste'),
                  const Gap(20),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: const BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Full text'),
                        ),
                      ),
                      const Gap(20),
                      Expanded(
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: const BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Full summary'),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Gap(20),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Personality scrore'),
                Text(
                  '8',
                  style: TextStyle(fontSize: 40),
                ),
              ],
            ),
            SvgPicture.asset('assets/svgs/sentiment.svg'),
            SvgPicture.asset('assets/svgs/sentiment.svg'),
            const Gap(20),
            const InfoCard(
              title: 'Favourite topics and interests',
              content: 'Sport. Speaker mentioned he likes a golf...',
            ),
            const Gap(20),
            const InfoCard(
              title: 'Contradictions in statements',
              content:
                  'First, speaker mentioned he keeps a healthy lifestyle, but he likes alcohol as well...',
            ),
            const Gap(60),
          ],
        ),
      ),
    );
  }
}
