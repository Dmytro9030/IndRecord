import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ind_records/OnBoard/pages/last_page.dart';
import 'package:ind_records/OnBoard/widgets/mid.dart';
import 'package:ind_records/IndRecord/pages/ind.dart';

class FirstOnboardingPage extends StatelessWidget {
  const FirstOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    navigateToLastOnboardingPage() {
      Navigator.push(context,
          CupertinoPageRoute(builder: (_) => const LastOnboardingPage()));
    }

    navigateToIndRecordingPage() {
      Navigator.push(context,
          CupertinoPageRoute(builder: (_) => const IndRecordingPage()));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('IndRecord'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: TextButton(
              onPressed: navigateToIndRecordingPage,
              child: const Text('Skip', style: TextStyle(fontSize: 20)),
            ),
          ),
          const MidSection(
            pageNum: 2,
          ),
          //const Gap(10),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: IconButton(
              onPressed: navigateToLastOnboardingPage,
              icon: const Icon(
                Icons.keyboard_arrow_right,
                size: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
