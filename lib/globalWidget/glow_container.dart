import 'package:flutter/cupertino.dart';

class GlowContainer extends StatelessWidget {
  const GlowContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
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
