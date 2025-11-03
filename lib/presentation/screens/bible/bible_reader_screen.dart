import 'package:flutter/material.dart';

class BibleReaderScreen extends StatelessWidget {
  const BibleReaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bible Reader')),
      body: const Center(
        child: Text('Bible Reader functionality coming soon...'),
      ),
    );
  }
}

class SavedVersesScreen extends StatelessWidget {
  const SavedVersesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Saved Verses')),
      body: const Center(
        child: Text('Saved verses functionality coming soon...'),
      ),
    );
  }
}
