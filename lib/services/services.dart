import 'package:flutter/cupertino.dart';
import 'package:joyfytech_website/services/tablet_services.dart';

import 'desktop_services.dart';
import 'mobile_services.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesState();
}

class _ServicesState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1280) {
        return const DesktopService();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1280) {
        return const TabletService();
      } else {
        return const MobileService();
      }
    });
  }
}
