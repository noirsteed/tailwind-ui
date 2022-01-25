import 'package:example/pages/application_ui/elements/avatars_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: const Text('Tailwind UI'),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView(
      children: [
        _buildApplicationUI(),
        _buildDivider(),
        _buildElements(),
        _buildAvatars(context),
      ],
    );
  }

  Widget _buildApplicationUI() {
    return const ListTile(
      title: Text(
        'Application UI',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildElements() {
    return const ListTile(
      title: Text('Elements'),
    );
  }

  Widget _buildAvatars(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 4 * 4,
      ),
      child: ListTile(
        title: const Text('Avatars'),
        subtitle: const Text('1 component'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => const AvatarsPage(),
        )),
      ),
    );
  }

  Widget _buildDivider() {
    return const Divider(
      height: 1,
      indent: 4 * 4,
    );
  }
}
