import 'package:fluro/fluro.dart';
import 'package:joyfytech_website/company/company.dart';
import 'package:joyfytech_website/get_our_projects/get_our_projects.dart';
import 'package:joyfytech_website/services/services.dart';

import '../admin/our_projects/our_works.dart';
import '../contact_us/contact_us.dart';
import '../main.dart';
import '../pricing/pricing.dart';

class AppRouter {
  static FluroRouter router = FluroRouter();

  static void setupRouter() {
    router.define(
      '',
      handler: Handler(handlerFunc: (context, params) => const MyHomePage()),
    );

    router.define(
      '/home/our-projects',
      handler:
          Handler(handlerFunc: (context, params) => const GetOurProjects()),
    );

    router.define(
      '/home/services',
      handler: Handler(handlerFunc: (context, params) => const ServicesPage()),
    );

    router.define(
      '/home/company',
      handler: Handler(handlerFunc: (context, params) => const CompanyPage()),
    );

    router.define(
      '/home/faq',
      handler: Handler(handlerFunc: (context, params) => const PricingPage()),
    );

    router.define(
      '/home/contact-us',
      handler: Handler(handlerFunc: (context, params) => const ContactUsPage()),
    );

    router.define(
      '/home/jtadmin5623',
      handler: Handler(handlerFunc: (context, params) => const OurWorksPage()),
    );
  }
}
