import 'package:flutter/cupertino.dart';
import 'package:joyfytech_website/company/tablet_company.dart';

import 'desktop_company.dart';
import 'mobile_company.dart';

class CompanyPage extends StatefulWidget {
  const CompanyPage({super.key});

  @override
  State<CompanyPage> createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1280) {
        return const DesktopCompany();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1280) {
        return const TabletCompany();
      } else {
        return const MobileCompany();
      }
    });
  }
}
