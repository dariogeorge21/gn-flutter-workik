import 'package:flutter/material.dart';

class PrayersScreen extends StatelessWidget {
  const PrayersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Prayers')),
      body: const Center(
        child: Text('Prayers functionality coming soon...'),
      ),
    );
  }
}

class PrayerDetailScreen extends StatelessWidget {
  final String prayerId;
  
  const PrayerDetailScreen({super.key, required this.prayerId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Prayer Detail')),
      body: Center(
        child: Text('Prayer detail for ID: $prayerId'),
      ),
    );
  }
}
