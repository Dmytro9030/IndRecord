import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:ind_records/IndRecord/widgets/infocard.dart';
import 'package:ind_records/globalWidget/glow_container.dart';
import 'package:ind_records/widgets/touchables.dart';

class IndRecordingPage extends StatefulWidget {
  const IndRecordingPage({super.key});

  @override
  State<IndRecordingPage> createState() => _IndRecordingPageState();
}

class _IndRecordingPageState extends State<IndRecordingPage> {
  @override
  Widget build(BuildContext context) {
    var maxScreenWidth = MediaQuery.of(context).size.width;
    var zoomWidthRate = maxScreenWidth / 390;
    var maxScreenHeight = MediaQuery.of(context).size.height;
    var zoomHeightRate = maxScreenHeight / 844;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(
            15 * zoomWidthRate, 45 * zoomHeightRate, 17 * zoomWidthRate, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //App Bar
            Row(
              children: [
                TouchableOpacity(
                  child: SvgPicture.asset(
                    'assets/svgs/settings.svg',
                    width: 18.75 * zoomWidthRate,
                    height: 19.75 * zoomHeightRate,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Flexible(
                  child: Center(
                    child: Text("Hi, Michael 👋",
                        style: TextStyle(fontSize: 14 * zoomHeightRate)),
                  ),
                ),
              ],
            ),
            //Summary
            Container(
              padding: const EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 20 * zoomHeightRate),
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
                  SizedBox(
                    width: 179 * zoomWidthRate,
                    height: 49 * zoomHeightRate,
                    child: GlowContainer(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.play_arrow),
                          Image.asset('assets/images/sound_wave.png')
                        ],
                      ),
                    ),
                  ),
                  Gap(15 * zoomHeightRate),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Summary for IndRecord will be here as',
                        style: TextStyle(fontSize: 15 * zoomHeightRate),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'simple text which you can copy/paste',
                        style: TextStyle(fontSize: 15 * zoomHeightRate),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Gap(25 * zoomHeightRate),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 105 * zoomWidthRate,
                        height: 29 * zoomHeightRate,
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
                          child: Text(
                            'Full text',
                            style: TextStyle(fontSize: 15 * zoomHeightRate),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 105 * zoomWidthRate,
                        height: 29 * zoomHeightRate,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.all(0),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: const BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Full Summary',
                            style: TextStyle(fontSize: 15 * zoomHeightRate),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            Column(
              children: [
                //Personal Score
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
                //Last Part: InfoRectangle
                Column(
                  children: [
                    InfoCard(
                      size: Size(290 * zoomWidthRate, 43 * zoomHeightRate),
                      title: 'Favourite topics and interests',
                      content: 'Sport. Speaker mentioned he likes a golf...',
                    ),
                    const Gap(15),
                    InfoCard(
                      size: Size(290 * zoomWidthRate, 43 * zoomHeightRate),
                      title: 'Contradictions in statements',
                      content:
                          'First, speaker mentioned he keeps a healthy lifestyle, but he likes alcohol as well...',
                    ),
                  ],
                ),
                const Gap(15),
              ],
            ),

            const Gap(60),
          ],
        ),
      ),
    );
  }
}
