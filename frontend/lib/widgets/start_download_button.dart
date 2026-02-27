import 'package:flutter/material.dart';
import 'package:web_spotify_downloader/consts.dart';

class StartDownloadButton extends StatelessWidget {
  final VoidCallback onClickedFunc;
  final double width;
  final double horizontalPadding;
  final double bottomPadding;
  final String buttonText;
  const StartDownloadButton({
    super.key,
    required this.onClickedFunc,
    required this.width,
    this.horizontalPadding = 0,
    this.bottomPadding = 0,
    this.buttonText = "Start Download",
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(
        left: horizontalPadding,
        right: horizontalPadding,
        bottom: bottomPadding,
      ),
      child: ElevatedButton.icon(
        onPressed: onClickedFunc,
        label: Text(
          buttonText,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        style: ElevatedButton.styleFrom(
          //? styleFrom je oproti ButtonStyle jednodušší, v ButtonStyle lze ale dynamicky měnit hodnoty - states jako jsou hovered, pressed, ...
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          alignment: Alignment.center,
          backgroundColor: Consts.primary,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          overlayColor: Colors.black.withValues(alpha: 0.5),
        ),
        icon: Icon(
          Icons.download_rounded,
          color: Colors.black,
          size: Theme.of(context).textTheme.bodyLarge!.fontSize,
        ),
        iconAlignment: IconAlignment.start,
      ),
    );
  }
}
