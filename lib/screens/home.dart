import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:ind_records/IndRecord/pages/ind.dart';
import 'package:ind_records/screens/insight.dart';
import 'package:ind_records/screens/records.dart';
import 'package:ind_records/widgets/touchables.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  void changeIndex(int value) {
    setState(() {
      currentPage = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: const [
          RecordsPage(),
          IndRecordingPage(),
          InsightsPage(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: TouchableOpacity(
        onTap: () => changeIndex(1),
        child: SvgPicture.asset(
          'assets/svgs/floating_action_button.svg',
          width: 78,
          height: 78,
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.paddingOf(context).bottom,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TouchableOpacity(
              onTap: () => changeIndex(0),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.save), Text('Save')],
              ),
            ),
            const Gap(0),
            TouchableOpacity(
              onTap: () => changeIndex(2),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.map), Text('Insights')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
