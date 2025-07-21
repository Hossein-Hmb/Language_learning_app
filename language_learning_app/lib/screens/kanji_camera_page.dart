import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class KanjiCameraPage extends StatefulWidget {
  const KanjiCameraPage({Key? key}) : super(key: key);

  @override
  State<KanjiCameraPage> createState() => _KanjiCameraPageState();
}

class _KanjiCameraPageState extends State<KanjiCameraPage> {
  CameraController? _controller;
  Future<void>? _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _initCamera();
  }

  Future<void> _initCamera() async {
    final cameras = await availableCameras();
    final camera = cameras.first;
    _controller = CameraController(
      camera,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller!.initialize();
    setState(() {});
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kanji Camera')),
      body: _controller == null
          ? const Center(child: CircularProgressIndicator())
          : FutureBuilder<void>(
              future: _initializeControllerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return CameraPreview(_controller!);
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
    );
  }
} 