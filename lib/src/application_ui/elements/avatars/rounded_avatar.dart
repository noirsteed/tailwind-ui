import 'package:flutter/widgets.dart';
import 'package:tailwind/tailwind.dart';

class RoundedAvatar extends StatelessWidget {
  final double size;
  final String src;

  const RoundedAvatar({
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
          borderRadius: BorderRadii.roundedMd,
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
