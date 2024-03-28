import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomepageScreen extends HookConsumerWidget {
  HomepageScreen({super.key});

  final listData = List.generate(100, (index) => 'data $index');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) => Text(listData[index]),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: listData.length,
      ),
    );
  }
}
