import 'package:flutter/cupertino.dart';
import 'package:joyfytech_website/contact_us/tablet_contact_us.dart';

import 'desktop_contact_us.dart';
import 'mobile_contact_us.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1280) {
        return const DesktopContactUs();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1280) {
        return const TabletContactUs();
      } else {
        return const MobileContactUs();
      }
    });
  }
}
