import 'package:flutter/material.dart';
import 'package:tailwind_ui/tailwind_ui.dart';

class AvatarsPage extends StatelessWidget {
  static const String _avatarUrl = 'https://images.unsplash.com/'
      'photo-1472099645785-5658abf4ff4e'
      '?fit=facearea&facepad=2&w=256&h=256&q=80';

  const AvatarsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: const Text('Avatars'),
    );
  }

  Widget _buildBody() {
    return ListView(
      children: [
        const ListTile(
          title: Text('Circular avatars'),
        ),
        _buildCircularAvatars(),
      ],
    );
  }

  Widget _buildCircularAvatars() {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 4 * 4,
      ),
      child: Container(
        padding: const EdgeInsets.all(4 * 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: List.generate(
            5,
            (int index) => CircularAvatar(
              size: 6 + (index * 2),
              src: _avatarUrl,
            ),
          ),
        ),
      ),
    );
  }
}
