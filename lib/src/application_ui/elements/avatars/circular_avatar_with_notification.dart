import 'package:flutter/widgets.dart';

import 'circular_avatar.dart';
import 'notification_dot.dart';

class CircularAvatarWithNotification extends StatelessWidget {
  final double size;
  final String src;
  final Alignment notificationAlignment;
  final Color notificationColor;

  const CircularAvatarWithNotification({
    Key? key,
    required this.size,
    required this.src,
    required this.notificationAlignment,
    required this.notificationColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: notificationAlignment,
      children: [
        CircularAvatar(
          size: size,
          src: src,
        ),
        NotificationDot(
          size: size / 4,
          color: notificationColor,
        ),
      ],
    );
  }
}
