import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart' as tailwind;
import 'package:tailwind_ui/tailwind_ui.dart';

class AvatarsPage extends StatelessWidget {
  static const String _avatarUrl = 'https://images.unsplash.com/'
      'photo-1472099645785-5658abf4ff4e'
      '?fit=facearea&facepad=2&w=256&h=256&q=80';

  static const List<Color> _notificationColors = [
    tailwind.Colors.gray300,
    tailwind.Colors.red400,
    tailwind.Colors.green400,
  ];

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
        const SizedBox(
          height: 4 * 4,
        ),
        const ListTile(
          title: Text('Rounded avatars'),
        ),
        _buildRoundedAvatars(),
        const SizedBox(
          height: 4 * 4,
        ),
        const ListTile(
          title: Text('Circular avatars with top notification'),
        ),
        _buildCircularAvatarsWithTopNotification(),
        const SizedBox(
          height: 4 * 4,
        ),
        const ListTile(
          title: Text('Rounded avatars with top notification'),
        ),
        _buildRoundedAvatarsWithTopNotification(),
        const SizedBox(
          height: 4 * 4,
        ),
        const ListTile(
          title: Text('Circular avatars with bottom notification'),
        ),
        _buildCircularAvatarsWithBottomNotification(),
        const SizedBox(
          height: 4 * 4,
        ),
        const ListTile(
          title: Text('Rounded avatars with bottom notification'),
        ),
        _buildRoundedAvatarsWithBottomNotification(),
        const SizedBox(
          height: 4 * 4,
        ),
        const ListTile(
          title: Text('Circular avatars with placeholder icon'),
        ),
        _buildCircularAvatarsWithPlaceholderIcon(),
        const SizedBox(
          height: 4 * 4,
        ),
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

  Widget _buildRoundedAvatars() {
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
            (int index) => RoundedAvatar(
              size: 6 + (index * 2),
              src: _avatarUrl,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCircularAvatarsWithTopNotification() {
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
            6,
            (int index) => CircularAvatarWithNotification(
              size: 6 + (index * 2),
              src: _avatarUrl,
              notificationAlignment: Alignment.topRight,
              notificationColor: _notificationColors[index % 3],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRoundedAvatarsWithTopNotification() {
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
            6,
            (int index) => RoundedAvatarWithNotification(
              size: 6 + (index * 2),
              src: _avatarUrl,
              notificationAlignment: Alignment.topRight,
              notificationColor: _notificationColors[index % 3],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCircularAvatarsWithBottomNotification() {
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
            6,
            (int index) => CircularAvatarWithNotification(
              size: 6 + (index * 2),
              src: _avatarUrl,
              notificationAlignment: Alignment.bottomRight,
              notificationColor: _notificationColors[index % 3],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRoundedAvatarsWithBottomNotification() {
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
            6,
            (int index) => RoundedAvatarWithNotification(
              size: 6 + (index * 2),
              src: _avatarUrl,
              notificationAlignment: Alignment.bottomRight,
              notificationColor: _notificationColors[index % 3],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCircularAvatarsWithPlaceholderIcon() {
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
            (int index) => CircularAvatarWithPlaceholderIcon(
              size: 6 + (index * 2),
            ),
          ),
        ),
      ),
    );
  }
}
