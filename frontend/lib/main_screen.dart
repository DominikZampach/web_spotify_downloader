import 'package:flutter/material.dart';
import 'package:web_spotify_downloader/consts.dart';
import 'package:web_spotify_downloader/widgets/projects_logo.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    if (!isMobile) {
      //? Desktopové zobrazení
      return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Consts.surface, Consts.primary],
            radius: 8,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ProjectLogo(width: 100),
                    ElevatedButton.icon(
                      onPressed: () {
                        //TODO
                      },
                      label: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          "Log into Spotify",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      icon: Icon(
                        Icons.download_for_offline_rounded,
                        color: Consts.primary,
                      ),
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Consts.surface.withValues(alpha: 0.6),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(flex: 1),
              Flexible(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                  child: SelectableText.rich(
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                    TextSpan(
                      children: [
                        TextSpan(text: "Spoti"),
                        TextSpan(
                          text: "Get",
                          style: TextStyle(color: Consts.primary),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ), //? Možná předělat do Spaceru
              Flexible(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                  child: SelectableText(
                    "Download your favourite playlist and albums in high quality.",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Consts.secondary,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Container(child: Text("MOBILE"));
  }
}
