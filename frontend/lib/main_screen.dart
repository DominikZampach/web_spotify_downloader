import 'package:flutter/material.dart';
import 'package:web_spotify_downloader/consts.dart';
import 'package:web_spotify_downloader/widgets/information_textbox_label_up.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsGeometry.directional(top: 30),
              child: Text(
                "Spotify Downloader",
                style: TextStyle(
                  fontSize: Consts.h1,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: isMobile ? 20 : 50),
            InformationTextboxLabelUp(
              context: context,
              verticalPadding: 5,
              textUp: "URL address of playlist/album",
              controller: urlController,
              spacingGap: 5,
              smallerFontSize: Consts.smaller,
              fontSize: Consts.normal,
              textBoxWidth: isMobile ? 300 : 700,
              alignOnLeft: true,
            ),
          ],
        ),
      ),
    );
  }
}
