import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MidSection extends StatelessWidget {
  const MidSection({super.key, required this.pageNum});
  final int pageNum;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: double.maxFinite),
          Image.asset(
            'assets/images/boy.png',
            height: 300,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Cont(pageNum == 1 ? true : false),
              Gap(5),
              Cont(pageNum == 2 ? true : false),
              Gap(5),
              Cont(pageNum == 3 ? true : false),
              Gap(5),
            ],
          ),
          const Gap(30),
          const Text('Welcome to IndRecord'),
          const Text('Please read out privacy policy')
        ],
      ),
    );
  }
}

class Cont extends StatelessWidget {
  const Cont(this.filled, {super.key});
  final bool filled;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: filled ? Colors.white : null,
        border: Border.all(color: Colors.white),
      ),
    );
  }
}
