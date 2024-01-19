import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class RecordsPage extends StatelessWidget {
  const RecordsPage({super.key});

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
        title: const Text('Records'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Gap(10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          color: Color(0xFF38667D),
                        ),
                      ],
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                const Gap(20),
                SvgPicture.asset(
                  'assets/svgs/sort_by_button.svg',
                ),
              ],
            ),
            const Gap(30),
            SvgPicture.asset(
              'assets/svgs/selected_card.svg',
              fit: BoxFit.cover,
              height: 110,
            ),
            const Gap(10),
            SvgPicture.asset(
              'assets/svgs/unselected_card.svg',
              fit: BoxFit.cover,
              height: 110,
            ),
            const Gap(10),
            SvgPicture.asset(
              'assets/svgs/unselected_card.svg',
              fit: BoxFit.cover,
              height: 110,
            ),
            const Gap(10),
            SvgPicture.asset(
              'assets/svgs/unselected_card.svg',
              fit: BoxFit.cover,
              height: 110,
            ),
          ],
        ),
      ),
    );
  }
}
