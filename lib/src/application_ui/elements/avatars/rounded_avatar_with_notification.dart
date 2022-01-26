import 'package:flutter/widgets.dart';

import 'notification_dot.dart';
import 'rounded_avatar.dart';

class RoundedAvatarWithNotification extends StatelessWidget {
  final double size;
  final String src;
  final Alignment notificationAlignment;
  final Color notificationColor;

  const RoundedAvatarWithNotification({
    Key? key,
    required this.size,
    required this.src,
    required this.notificationAlignment,
    required this.notificationColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double notificationSize = size / 4;
    return Stack(
      alignment: notificationAlignment,
      children: [
        RoundedAvatar(
          size: size,
          src: src,
        ),
        Transform.translate(
          offset: Offset(
            notificationAlignment.x * 0.5 * notificationSize * 4,
            notificationAlignment.y * 0.5 * notificationSize * 4,
          ),
          child: NotificationDot(
            size: notificationSize,
            color: notificationColor,
          ),
        ),
      ],
    );
  }
}
