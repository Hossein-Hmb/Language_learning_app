import 'package:flutter/material.dart';
import 'kanji_camera_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JLPT Language Learning'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                // TODO: Navigate to Reading feature
              },
              child: const Text('Reading'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // TODO: Navigate to Grammar feature
              },
              child: const Text('Grammar'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // TODO: Navigate to Vocabulary feature
              },
              child: const Text('Vocabulary'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // TODO: Navigate to Listening feature
              },
              child: const Text('Listening'),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const KanjiCameraPage()),
                );
              },
              icon: const Icon(Icons.camera_alt),
              label: const Text('Kanji Camera'),
            ),
          ],
        ),
      ),
    );
  }
} 