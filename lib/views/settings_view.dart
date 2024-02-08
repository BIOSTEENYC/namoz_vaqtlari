import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sozlamalar'),
      ),
      body: const Center(
        child: Text('Bu yerda sozlamalar bo\'ladi'),
      ),
    );
  }
}