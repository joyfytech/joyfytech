import 'package:flutter/cupertino.dart';
import 'package:joyfytech_website/admin/our_projects/tablet_add_our_projects.dart';

import 'desktop_add_our_projects.dart';
import 'mobile_add_our_projects.dart';

class OurWorksPage extends StatefulWidget {
  const OurWorksPage({super.key});

  @override
  State<OurWorksPage> createState() => _OurWorksPageState();
}

class _OurWorksPageState extends State<OurWorksPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1280) {
        return DesktopAddOurWorks();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1280) {
        return const TabletAddOurWorks();
      } else {
        return const MobileAddOurWorks();
      }
    });
  }
}
