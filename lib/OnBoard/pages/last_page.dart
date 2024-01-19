import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ind_records/OnBoard/widgets/mid.dart';
import 'package:ind_records/IndRecord/pages/ind.dart';

class LastOnboardingPage extends StatelessWidget {
  const LastOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    navigateToIndRecordingPage() {
      Navigator.pushAndRemoveUntil(
        context,
        CupertinoPageRoute(builder: (_) => const IndRecordingPage()),
        (_) => false,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('IndRecord'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Gap(120),
          const MidSection(
            pageNum: 1,
          ),
          Column(
            children: [
              FractionallySizedBox(
                widthFactor: .5,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF7EF6F0),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: navigateToIndRecordingPage,
                  child: const Text('Next', style: TextStyle(fontSize: 20)),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: const Color(0xFF7EF6F0),
                ),
                onPressed: navigateToIndRecordingPage,
                child: const Text('Skip', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
          const Gap(50),
        ],
      ),
    );
  }
}
