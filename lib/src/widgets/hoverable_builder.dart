import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';

class HoverableBuilder extends StatefulWidget {
  final Widget Function(BuildContext context, bool hovered) builder;
  final VoidCallback? onTap;

  const HoverableBuilder({
    Key? key,
    required this.builder,
    this.onTap,
  }) : super(key: key);

  @override
  State<HoverableBuilder> createState() => _HoverableBuilderState();
}

class _HoverableBuilderState extends State<HoverableBuilder> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: widget.builder(context, _hovered),
        onEnter: (PointerEnterEvent event) => setState(() => _hovered = true),
        onExit: (PointerExitEvent event) => setState(() => _hovered = false),
      ),
      onTap: widget.onTap,
    );
  }
}
