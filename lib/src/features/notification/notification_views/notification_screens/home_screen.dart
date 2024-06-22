import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:its_urgent/src/commons/common_providers/firebase_auth_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () async {
              await ref.read(phoneAuthProvider).signOut();
            },
            child: const Text("Sign OUT")),
      ),
    );
  }
}
