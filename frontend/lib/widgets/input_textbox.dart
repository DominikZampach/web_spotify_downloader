import 'package:flutter/material.dart';
import 'package:web_spotify_downloader/consts.dart';

class InputTextbox extends StatelessWidget {
  final TextEditingController textController;
  final double width;
  final String hintText;
  final double horizontalPadding;
  final double verticalPadding;
  const InputTextbox({
    super.key,
    required this.textController,
    required this.width,
    this.hintText = "Paste Spotify Playlist or Album URL",
    required this.horizontalPadding,
    required this.verticalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: SizedBox(
        width: width,
        child: TextField(
          controller: textController,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w300,
              color: Consts.secondary.withValues(alpha: 0.4),
            ),
            filled: true,
            fillColor: Consts.surface.withValues(alpha: 0.3),
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 3),
              borderRadius: BorderRadius.circular(15),
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 15, right: 5),
              child: Icon(
                Icons.link_rounded,
                size: Theme.of(context).textTheme.bodyLarge!.fontSize,
              ),
            ),
            contentPadding: EdgeInsets.all(10),
          ),
          style: Theme.of(context).textTheme.bodyMedium!,
        ),
      ),
    );
  }
}
