import 'package:flutter/cupertino.dart';
import 'package:joyfytech_website/navbar/tablet_navbar.dart';

import 'desktop_navbar.dart';
import 'mobile_navbar.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1280) {
        return const DesktopNavbar();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1280) {
        return const TabletNavbar();
      } else {
        return const MobileNavbar();
      }
    });
  }
}
