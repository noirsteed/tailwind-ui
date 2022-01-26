import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart' as tailwind;
import 'package:tailwind_ui/tailwind_ui.dart';

class AvatarsPage extends StatelessWidget {
  static const String _avatar1Url = 'https://images.unsplash.com/'
      'photo-1491528323818-fdd1faba62cc'
      '?fit=facearea&facepad=2&w=256&h=256&q=80';
  static const String _avatar2Url = 'https://images.unsplash.com/'
      'photo-1550525811-e5869dd03032'
      '?fit=facearea&facepad=2&w=256&h=256&q=80';
  static const String _avatar3Url = 'https://images.unsplash.com/'
      'photo-1500648767791-00dcc994a43e'
      '?fit=facearea&facepad=2&w=256&h=256&q=80';
  static const String _avatar4Url = 'https://images.unsplash.com/'
      'photo-1472099645785-5658abf4ff4e'
      '?fit=facearea&facepad=2&w=256&h=256&q=80';

  static const List<Color> _notificationColors = [
    tailwind.Colors.gray300,
    tailwind.Colors.red400,
    tailwind.Colors.green400,
  ];

  static const List<double> _initialsSizes = [
    tailwind.FontSizes.textXs,
    tailwind.FontSizes.textSm,
    tailwind.FontSizes.textBase,
    tailwind.FontSizes.textLg,
    tailwind.FontSizes.textXl,
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
        const ListTile(
          title: Text('Circular avatars with placeholder initials'),
        ),
        _buildCircularAvatarsWithPlaceholderInitials(),
        const SizedBox(
          height: 4 * 4,
        ),
        const ListTile(
          title: Text('Avatar group stacked bottom to top'),
        ),
        _buildAvatarGroupStackedBottomToTop(),
        const SizedBox(
          height: 4 * 4,
        ),
        const ListTile(
          title: Text('Avatar group stacked top to bottom'),
        ),
        _buildAvatarGroupStackedTopToBottom(),
        const SizedBox(
          height: 4 * 4,
        ),
        const ListTile(
          title: Text('With text'),
        ),
        _buildWithText(),
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
              src: _avatar4Url,
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
              src: _avatar4Url,
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
              src: _avatar4Url,
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
              src: _avatar4Url,
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
              src: _avatar4Url,
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
              src: _avatar4Url,
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

  Widget _buildCircularAvatarsWithPlaceholderInitials() {
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
            (int index) => CircularAvatarWithPlaceholderInitials(
              size: 6 + (index * 2),
              fontSize: _initialsSizes[index],
              initials: 'TW',
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAvatarGroupStackedBottomToTop() {
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
            3,
            (int index) => AvatarGroupBottomToTop(
              size: 6 + (index * 2),
              overlap: (index * 2 / 6).ceil() + 1,
              srcs: const [_avatar1Url, _avatar2Url, _avatar3Url, _avatar4Url],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAvatarGroupStackedTopToBottom() {
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
            3,
            (int index) => AvatarGroupTopToBottom(
              size: 6 + (index * 2),
              overlap: (index * 2 / 6).ceil() + 1,
              srcs: const [_avatar1Url, _avatar2Url, _avatar3Url, _avatar4Url],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWithText() {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 4 * 4,
      ),
      child: Container(
        padding: const EdgeInsets.all(4 * 4),
        alignment: Alignment.center,
        child: const ProfileTile(
          src: _avatar4Url,
          name: 'Tom Cook',
        ),
      ),
    );
  }
}
