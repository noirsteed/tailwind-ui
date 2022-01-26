import 'package:flutter/widgets.dart';
import 'package:tailwind/tailwind.dart';

import '../../../widgets/hoverable_builder.dart';
import 'circular_avatar.dart';

class ProfileTile extends StatelessWidget {
  final String src;
  final String name;
  final VoidCallback? onTap;

  const ProfileTile({
    Key? key,
    required this.src,
    required this.name,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoverableBuilder(
      builder: (BuildContext context, bool hovered) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularAvatar(
              size: 9,
              src: src,
            ),
            const SizedBox(
              width: 3 * 4,
            ),
            Column(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    height: LineHeights.textSm,
                    fontSize: FontSizes.textSm,
                    fontWeight: FontWeights.fontMedium,
                    color: hovered ? Colors.gray900 : Colors.gray700,
                  ),
                ),
                Text(
                  'View profile',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    height: LineHeights.textXs,
                    fontSize: FontSizes.textXs,
                    fontWeight: FontWeights.fontMedium,
                    color: hovered ? Colors.gray700 : Colors.gray500,
                  ),
                ),
              ],
            ),
          ],
        );
      },
      onTap: onTap,
    );
  }
}
