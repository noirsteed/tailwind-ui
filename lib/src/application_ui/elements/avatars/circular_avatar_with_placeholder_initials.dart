import 'package:flutter/widgets.dart';
import 'package:tailwind/tailwind.dart';

class CircularAvatarWithPlaceholderInitials extends StatelessWidget {
  final double size;
  final double fontSize;
  final String initials;

  const CircularAvatarWithPlaceholderInitials({
    Key? key,
    required this.size,
    required this.fontSize,
    required this.initials,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        clipBehavior: Clip.antiAlias,
        height: size * 4,
        width: size * 4,
        decoration: const BoxDecoration(
          borderRadius: BorderRadii.roundedFull,
          color: Colors.gray500,
        ),
        alignment: Alignment.center,
        child: Text(
          initials,
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: fontSize,
            fontWeight: FontWeights.fontMedium,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
