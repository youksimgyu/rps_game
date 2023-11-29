import 'package:flutter/material.dart';
import 'package:rps_game/game/game_body.dart';

void main() {
  runApp(const RSPApp());
}

class RSPApp extends StatelessWidget {
  const RSPApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('가위 바위 보 게임'),
        ),
        body: const GameBody(),
      ),
    );
  }
}
