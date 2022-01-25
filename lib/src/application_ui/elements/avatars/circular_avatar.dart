import 'package:flutter/widgets.dart';
import 'package:tailwind/tailwind.dart';

class CircularAvatar extends StatelessWidget {
  final double size;
  final String src;

  const CircularAvatar({
    Key? key,
    required this.size,
    required this.src,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          borderRadius: BorderRadii.roundedFull,
        ),
        child: Image.network(
          src,
          height: size * 4,
          width: size * 4,
        ),
      ),
    );
  }
}
