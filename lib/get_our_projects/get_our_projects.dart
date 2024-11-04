import 'package:flutter/material.dart';
import 'package:joyfytech_website/get_our_projects/tablet_get_our_projects.dart';

import 'desktop_get_our_projects.dart';
import 'mobile_get_our_projects.dart';

class GetOurProjects extends StatefulWidget {
  const GetOurProjects({super.key});

  @override
  State<GetOurProjects> createState() => _GetOurProjectsState();
}

class _GetOurProjectsState extends State<GetOurProjects> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1280) {
        return const DesktopGetOurProjects();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1280) {
        return const TabletGetOurProjects();
      } else {
        return const MobileGetOurProjects();
      }
    });
  }
}
