import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const player = AssetsAudioPlayer;

    return MaterialApp(
      title: 'Xylophone App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Xylophone'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () async {
                  final assetsAudioPlayer = AssetsAudioPlayer();

                  assetsAudioPlayer.open(
                    Audio("assets/audios/assets_note2.wav"),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                ),
                child: const SizedBox(),
              ),
            ),
            const Expanded(
              child: ColoredBox(color: Colors.indigo),
            ),
            const Expanded(
              child: ColoredBox(color: Colors.blue),
            ),
            const Expanded(
              child: ColoredBox(color: Colors.green),
            ),
            const Expanded(
              child: ColoredBox(color: Colors.yellow),
            ),
            const Expanded(
              child: ColoredBox(color: Colors.orange),
            ),
            const Expanded(
              child: ColoredBox(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
//
// class SoundPlayer extends StatelessWidget {
//   final Color colorCode;
//   final String soundSource;
//
//   const SoundPlayer({Key? key, required this.colorCode, required this.soundSource}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final player = AudioPlayer();
//
//     return Expanded(
//       child: TextButton(
//         onPressed: () async {
//           await player.play(AssetSource(soundSource));
//         },
//         style: TextButton.styleFrom(
//           backgroundColor: colorCode,
//         ),
//         child: const SizedBox(),
//       ),
//     );
//   }
// }
