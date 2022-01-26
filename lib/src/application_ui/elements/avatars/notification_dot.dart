import 'package:flutter/widgets.dart';
import 'package:tailwind/tailwind.dart';

class NotificationDot extends StatelessWidget {
  final double size;
  final Color color;

  const NotificationDot({
    Key? key,
    required this.size,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size * 4,
      width: size * 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadii.roundedFull,
        color: color,
        boxShadow: const [
          BoxShadow(
            spreadRadius: 2,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
