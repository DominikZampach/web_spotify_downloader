import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProjectLogo extends StatelessWidget {
  final double width;
  const ProjectLogo({super.key, required this.width});

  final String logoPath = 'assets/logos/SpotiGetLogoExportSvg.svg';

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      logoPath,
      width: width,
      alignment: AlignmentGeometry.center,
      semanticsLabel: 'SpotiGet logo',
    );
  }
}
