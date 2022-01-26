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
        ..._buildSection('Circular avatars', _buildCircularAvatars()),
        ..._buildSection('Rounded avatars', _buildRoundedAvatars()),
        ..._buildSection(
          'ircular avatars with top notification',
          _buildCircularAvatarsWithTopNotification(),
        ),
        ..._buildSection(
          'Rounded avatars with top notification',
          _buildRoundedAvatarsWithTopNotification(),
        ),
        ..._buildSection(
          'Circular avatars with bottom notification',
          _buildCircularAvatarsWithBottomNotification(),
        ),
        ..._buildSection(
          'Rounded avatars with bottom notification',
          _buildRoundedAvatarsWithBottomNotification(),
        ),
        ..._buildSection(
          'Circular avatars with placeholder icon',
          _buildCircularAvatarsWithPlaceholderIcon(),
        ),
        ..._buildSection(
          'Circular avatars with placeholder initials',
          _buildCircularAvatarsWithPlaceholderInitials(),
        ),
        ..._buildSection(
          'Avatar group stacked bottom to top',
          _buildAvatarGroupStackedBottomToTop(),
        ),
        ..._buildSection(
          'Avatar group stacked top to bottom',
          _buildAvatarGroupStackedTopToBottom(),
        ),
        ..._buildSection('With text', _buildWithText()),
      ],
    );
  }

  List<Widget> _buildSection(String title, Widget child) {
    return [
      ListTile(
        title: Text(title),
      ),
      Card(
        margin: const EdgeInsets.symmetric(
          horizontal: 4 * 4,
        ),
        child: Container(
          padding: const EdgeInsets.all(4 * 4),
          child: child,
        ),
      ),
      const SizedBox(
        height: 4 * 4,
      ),
    ];
  }

  Widget _buildCircularAvatars() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: List.generate(
        5,
        (int index) => CircularAvatar(
          size: 6 + (index * 2),
          src: _avatar4Url,
        ),
      ),
    );
  }

  Widget _buildRoundedAvatars() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: List.generate(
        5,
        (int index) => RoundedAvatar(
          size: 6 + (index * 2),
          src: _avatar4Url,
        ),
      ),
    );
  }

  Widget _buildCircularAvatarsWithTopNotification() {
    return Row(
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
    );
  }

  Widget _buildRoundedAvatarsWithTopNotification() {
    return Row(
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
    );
  }

  Widget _buildCircularAvatarsWithBottomNotification() {
    return Row(
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
    );
  }

  Widget _buildRoundedAvatarsWithBottomNotification() {
    return Row(
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
    );
  }

  Widget _buildCircularAvatarsWithPlaceholderIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: List.generate(
        5,
        (int index) => CircularAvatarWithPlaceholderIcon(
          size: 6 + (index * 2),
        ),
      ),
    );
  }

  Widget _buildCircularAvatarsWithPlaceholderInitials() {
    return Row(
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
    );
  }

  Widget _buildAvatarGroupStackedBottomToTop() {
    return Row(
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
    );
  }

  Widget _buildAvatarGroupStackedTopToBottom() {
    return Row(
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
    );
  }

  Widget _buildWithText() {
    return const Center(
      child: ProfileTile(
        src: _avatar4Url,
        name: 'Tom Cook',
      ),
    );
  }
}
