import 'package:flutter/material.dart';
import 'package:web_spotify_downloader/consts.dart';
import 'package:web_spotify_downloader/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Spotify Downloader",
      theme: ThemeData(useMaterial3: true, colorScheme: Consts.colorScheme),
      home: MainScreen(),
    );
  }
}
