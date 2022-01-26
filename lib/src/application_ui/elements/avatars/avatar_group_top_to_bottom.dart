import 'package:flutter/widgets.dart';
import 'package:tailwind/tailwind.dart';
import 'package:tailwind_ui/tailwind_ui.dart';

class AvatarGroupTopToBottom extends StatelessWidget {
  final double size;
  final double overlap;
  final List<String> srcs;

  const AvatarGroupTopToBottom({
    Key? key,
    required this.size,
    required this.overlap,
    required this.srcs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: srcs.reversed.map((String src) {
        return Padding(
          padding: EdgeInsets.only(
            left: srcs.indexOf(src) * (size - overlap) * 4,
          ),
          child: DecoratedBox(
            decoration: const BoxDecoration(
              borderRadius: BorderRadii.roundedFull,
              boxShadow: [
                BoxShadow(
                  spreadRadius: 2,
                  color: Colors.white,
                ),
              ],
            ),
            child: CircularAvatar(
              size: size,
              src: src,
            ),
          ),
        );
      }).toList(),
    );
  }
}
