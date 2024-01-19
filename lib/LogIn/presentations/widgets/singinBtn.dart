// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:ind_records/globalWidget/glow_container.dart';
import 'package:ind_records/widgets/touchables.dart';

class LoginPageBtn extends StatelessWidget {
  const LoginPageBtn(
      {super.key,
      required this.icon,
      required this.title,
      required this.onClickFunction});

  final Widget icon;
  final String title;
  final VoidCallback onClickFunction;

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      onTap: onClickFunction,
      child: GlowContainer(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [icon, const Gap(10), Text(title)],
        ),
      ),
    );
  }
}
