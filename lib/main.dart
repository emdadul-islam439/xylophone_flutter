import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Expanded coloredButton({required Color color, required int audioNumber}){
    return Expanded(
      child: TextButton(
        onPressed: () async {
          final assetsAudioPlayer = AssetsAudioPlayer();
          await assetsAudioPlayer.open(
            Audio("assets/audios/assets_note$audioNumber.wav"),
          );
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        child: const SizedBox(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Xylophone'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            coloredButton(color: Colors.deepPurpleAccent, audioNumber: 1),
            coloredButton(color: Colors.indigo, audioNumber: 2),
            coloredButton(color: Colors.blue, audioNumber: 3),
            coloredButton(color: Colors.green, audioNumber: 4),
            coloredButton(color: Colors.yellow, audioNumber: 5),
            coloredButton(color: Colors.orange, audioNumber: 6),
            coloredButton(color: Colors.red, audioNumber: 7),
          ],
        ),
      ),
    );
  }
}
