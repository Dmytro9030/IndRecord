import 'package:flutter/cupertino.dart';

class GlowContainer extends StatelessWidget {
  GlowContainer({
    super.key,
    this.padding,
    required this.child,
  }) : assert(padding == null || padding.isNonNegative);

  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: const Color(0xFF010314),
        borderRadius: BorderRadius.circular(40),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            color: Color(0xFF7EF6F0),
          )
        ],
      ),
      child: child,
    );
  }
}
