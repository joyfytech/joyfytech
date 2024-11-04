import 'package:flutter/cupertino.dart';
import 'package:joyfytech_website/pricing/tablet_pricing.dart';

import 'desktop_pricing.dart';
import 'mobile_pricing.dart';

class PricingPage extends StatefulWidget {
  const PricingPage({super.key});

  @override
  State<PricingPage> createState() => _PricingPageState();
}

class _PricingPageState extends State<PricingPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1280) {
        return const DesktopPricing();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1280) {
        return const TabletPricing();
      } else {
        return const MobilePricing();
      }
    });
  }
}
