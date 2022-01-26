import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tailwind/tailwind.dart';

class CircularAvatarWithPlaceholderIcon extends StatelessWidget {
  static const String _icon = '''
<svg fill="currentColor" viewBox="0 0 24 24">
  <path d="M24 20.993V24H0v-2.996A14.977 14.977 0 0112.004 15c4.904 0 9.26 2.354 11.996 5.993zM16.002 8.999a4 4 0 11-8 0 4 4 0 018 0z" />
</svg>
  ''';

  final double size;

  const CircularAvatarWithPlaceholderIcon({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          borderRadius: BorderRadii.roundedFull,
          color: Colors.gray100,
        ),
        child: SvgPicture.string(
          _icon,
          height: size * 4,
          width: size * 4,
          color: Colors.gray300,
        ),
      ),
    );
  }
}
