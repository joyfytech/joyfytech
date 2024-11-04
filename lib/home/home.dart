import 'package:flutter/cupertino.dart';
import 'package:joyfytech_website/home/desktop_home.dart';
import 'package:joyfytech_website/home/mobile_home.dart';
import 'package:joyfytech_website/home/tablet_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1280) {
        return const DesktopHome();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1280) {
        return const TabletHome();
      } else {
        return const MobileHome();
      }
    });
  }
}
