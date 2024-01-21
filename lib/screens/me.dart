import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:ind_records/globalWidget/glow_container.dart';

class MeScreen extends StatelessWidget {
  const MeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(
          'assets/svgs/settings.svg',
          width: 24,
          height: 24,
          fit: BoxFit.scaleDown,
        ),
        title: const Text('Me'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20),
              GlowContainer(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      const Text(
                        'average attitude of people towards me',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      SvgPicture.asset(
                        'assets/svgs/slider.svg',
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TrustRating(path: 'assets/svgs/deep_blue_graph.svg'),
                  Gap(10),
                  TrustRating(),
                  Gap(10),
                  TrustRating(),
                ],
              ),
              const Gap(10),
              Align(
                child: SvgPicture.asset(
                  'assets/svgs/score_graph.svg',
                  // width: 100,
                  // height: 100,
                ),
              ),
              // const InfoCard(
              //   title: 'Favourite topics and interests',
              //   content: 'Sport. Speaker mentioned he likes a golf...',
              // ),
              // const Gap(20),
              // const InfoCard(
              //   title: 'Contradictions in statements',
              //   content:
              //       'First, speaker mentioned he keeps a healthy lifestyle, but he likes alcohol as well...',
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class TrustRating extends StatelessWidget {
  const TrustRating(
      {super.key, this.path = 'assets/svgs/light_blue_graph.svg'});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFFBDBDBD),
        ),
      ),
      child: Row(
        children: [
          const Column(
            children: [Text('Trust'), Text('5/2')],
          ),
          SvgPicture.asset(path
              // width: 100,
              // height: 100,
              ),
        ],
      ),
    );
  }
}
