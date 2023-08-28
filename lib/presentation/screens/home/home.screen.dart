import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:propresenter_remote/presentation/screens/config/config.provider.dart';

const homeMargin = EdgeInsets.only(left: 24, right: 24, bottom: 30);

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});
  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final client = ref.watch(configProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProPresenter Remote'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Current Host: ${client.host}'),
          ],
        ),
      ),
    );
  }
}
