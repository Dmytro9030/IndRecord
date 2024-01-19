import 'dart:math';

import 'package:flutter/material.dart';

///
class TouchableHighlight extends StatefulWidget {
  ////
  const TouchableHighlight({
    required this.child,
    super.key,
    this.onTap,
    this.onLongPress,
    this.highlightColor = const Color.fromARGB(255, 66, 66, 66),
  });

  ///
  final Widget child;

  ///
  final VoidCallback? onTap;

  ///
  final VoidCallback? onLongPress;

  ///
  final Color highlightColor;

  @override
  State<TouchableHighlight> createState() => _TouchableHighlightState();
}

class _TouchableHighlightState extends State<TouchableHighlight>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  // late Animation<double> _animation;

  void _onTap() => widget.onTap?.call();
  void _onTapDown(_) =>
      _controller.animateTo(1, duration: const Duration(milliseconds: 75));
  void _onTapUp(_) => _controller.reverse(from: 1);
  void _onCancel() => _controller.reverse(from: 1);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    // _animation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: _onTap,
      onTapUp: _onTapUp,
      onTapDown: _onTapDown,
      onLongPress: widget.onLongPress,
      onTapCancel: _onCancel,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return ColoredBox(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(
                  Tween<double>(begin: 0, end: 0.2)
                      .transform(_controller.value),
                ),
            child: Opacity(
              opacity: max(1 - _controller.value, 0.5),
              // child: ScaleTransition(
              // scale: Tween<double>(begin: .88, end: 1).animate(_animation),
              child: child,
              // ),
            ),
          );
        },
        child: widget.child,
      ),
    );
  }
}

///
class TouchableOpacity extends StatefulWidget {
  ///
  const TouchableOpacity({
    required this.child,
    super.key,
    this.onTap,
    this.onLongPress,
    this.activeOpacity = 0.5,
  });

  ///
  final Widget child;

  ///
  final double activeOpacity;

  ///
  final VoidCallback? onTap;

  ///
  final VoidCallback? onLongPress;

  @override
  State<TouchableOpacity> createState() => _TouchableOpacityState();
}

class _TouchableOpacityState extends State<TouchableOpacity>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<double> _animation;

  void _onTap() => widget.onTap?.call();
  void _onTapDown(_) =>
      _controller.animateTo(1, duration: const Duration(milliseconds: 75));
  void _onTapUp(_) => _controller.reverse(from: 1);
  void _onCancel() => _controller.reverse(from: 1);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    _animation =
        Tween<double>(begin: 1, end: widget.activeOpacity).animate(_controller);
  }

  @override
  void didUpdateWidget(covariant TouchableOpacity oldWidget) {
    super.didUpdateWidget(oldWidget);
    _animation =
        Tween<double>(begin: 1, end: widget.activeOpacity).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: _onTap,
      onTapUp: _onTapUp,
      onTapDown: _onTapDown,
      onLongPress: widget.onLongPress,
      onTapCancel: _onCancel,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Opacity(
            opacity: _animation.value,
            child: child,
          );
          // return ScaleTransition(
          //   scale: Tween<double>(begin: .88, end: 1).animate(_animation),
          //   child: Opacity(
          //     opacity: _animation.value,
          //     child: child,
          //   ),
          // );
        },
        child: widget.child,
      ),
    );
  }
}
