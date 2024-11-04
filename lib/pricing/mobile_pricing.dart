import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/mobile_home.dart';
import '../router/app_router.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';
import 'desktop_pricing.dart';

class MobilePricing extends StatefulWidget {
  const MobilePricing({super.key});

  @override
  State<MobilePricing> createState() => _MobilePricingState();
}

class _MobilePricingState extends State<MobilePricing> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Center(
          child: ClipOval(
            child: Image.asset(
              "assets/images/joyfy_tech_logo.png",
              height: 40,
              width: 40,
            ),
          ),
        ),
        title: Text("${Constants.projectTitle}",
            style: GoogleFonts.poppins(
              fontSize: Constants.twenty,
              fontWeight: FontWeight.bold,
              color: Color(
                hexToInt("0xFF${ColorsData.blueColor}"),
              ),
            )),
      ),
      endDrawer: drawer(context),
      body: SingleChildScrollView(
          child: Column(
        children: [
          // mobileOurBestPricing(context),
          const SizedBox(
            height: 20,
          ),
          mobileFaq(context),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    AppRouter.router.navigateTo(context, "/home/contact-us");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      color: Color(
                        hexToInt("0xFF${ColorsData.blueColor}"),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: Constants.sixteen,
                          horizontal: Constants.thirtyTwo),
                      child: Text(
                        "${Constants.getInTouchWithUs}",
                        style: TextStyle(
                          fontSize: Constants.twenty,
                          color: Color(
                            hexToInt("0xFF${ColorsData.whiteColor}"),
                          ),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          mobileBottomView(context),
        ],
      )),
    ));
  }
}

mobileFaq(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      children: [
        Text("${Constants.fAQ}",
            style: GoogleFonts.poppins(
              fontSize: Constants.twentyFour,
              fontWeight: FontWeight.bold,
              color: Color(
                hexToInt("0xFF${ColorsData.black212121}"),
              ),
            )),
        const SizedBox(
          height: 20,
        ),
        mobileBuildFaq(context, "${Constants.faqTitleOne}",
            "${Constants.mobileFaqDescriptionOne}"),
        const SizedBox(
          height: 20,
        ),
        mobileBuildFaq(context, "${Constants.faqTitleTwo}",
            "${Constants.faqDescriptionTwo}"),
        const SizedBox(
          height: 20,
        ),
        mobileBuildFaq(context, "${Constants.faqTitleThree}",
            "${Constants.faqDescriptionThree}"),
        const SizedBox(
          height: 20,
        ),
        mobileBuildFaq(context, "${Constants.faqTitleFour}",
            "${Constants.faqDescriptionFour}"),
        const SizedBox(
          height: 20,
        ),
        mobileBuildFaq(context, "${Constants.faqTitleFive}",
            "${Constants.faqDescriptionFive}"),
        const SizedBox(
          height: 20,
        ),
        mobileBuildFaq(context, "${Constants.faqTitleSix}",
            "${Constants.faqDescriptionSix}"),
      ],
    ),
  );
}

Widget mobileBuildFaq(BuildContext context, String question, String answer) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("$question",
          textAlign: TextAlign.justify,
          style: GoogleFonts.poppins(
            fontSize: Constants.sixteen,
            fontWeight: FontWeight.w500,
            color: Color(
              hexToInt("0xFF${ColorsData.black212121}"),
            ),
          )),
      const SizedBox(
        height: 10,
      ),
      Divider(
        color: Color(
          hexToInt("0xFF${ColorsData.greyCACACA}"),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text("$answer",
          textAlign: TextAlign.justify,
          style: GoogleFonts.poppins(
            fontSize: Constants.twele,
            fontWeight: FontWeight.normal,
            color: Color(
              hexToInt("0xFF${ColorsData.blackTwo}"),
            ),
          )),
    ],
  );
}

mobileOurBestPricing(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text("${Constants.ourBestPricingPackage}",
            style: GoogleFonts.poppins(
              fontSize: Constants.twentyFour,
              fontWeight: FontWeight.bold,
              color: Color(
                hexToInt("0xFF${ColorsData.black212121}"),
              ),
            )),
        const SizedBox(
          height: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 25,
            ),
            buildOurBestPricing(
                context,
                "Single Software",
                "14999/-",
                "Any one of Android, ios, Website.",
                "Full access to all features ",
                "Ongoing Maintenance.",
                "Hosting",
                "Dedicated customer support"),
            const SizedBox(
              height: 20,
            ),
            buildOurBestPricing(
                context,
                "Dual Software",
                "29999/-",
                "Any two of Android, ios, Website.",
                "Full access to all features ",
                "Ongoing Maintenance.",
                "Hosting",
                "Dedicated customer support"),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildOurBestPricing(
                context,
                "Three Software",
                "39999/-",
                "Android, ios, Website.",
                "Full access to all features ",
                "Ongoing Maintenance.",
                "Hosting",
                "Dedicated customer support"),
            const SizedBox(
              height: 20,
            ),
            buildOurBestPricing(
                context,
                "Customized Software ",
                "Contact Us for\nPricing",
                "Tailored solutions to \nmeet yourspecific needs \nand requirements.",
                "Full access to all features ",
                "Ongoing Maintenance.",
                "Hosting",
                "Dedicated customer support"),
          ],
        )
      ],
    ),
  );
}

drawer(BuildContext context) {
  return Drawer(
    backgroundColor: Colors.white,
    width: 250,
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              AppRouter.router.navigateTo(context, "");
            },
            child: ListTile(
              title: Text("${Constants.homeText}",
                  style: TextStyle(
                    fontSize: Constants.twenty,
                    fontWeight: FontWeight.normal,
                    color: Color(
                      hexToInt("0xFF${ColorsData.blackColor}"),
                    ),
                  )),
            ),
          ),
          InkWell(
            onTap: () {
              AppRouter.router.navigateTo(context, "/home/our-projects");
            },
            child: ListTile(
              title: Text("${Constants.oruProjectsText}",
                  style: TextStyle(
                    fontSize: Constants.twenty,
                    fontWeight: FontWeight.normal,
                    color: Color(
                      hexToInt("0xFF${ColorsData.blackColor}"),
                    ),
                  )),
            ),
          ),
          InkWell(
            onTap: () {
              AppRouter.router.navigateTo(context, "/home/company");
            },
            child: ListTile(
              title: Text("${Constants.companyText}",
                  style: TextStyle(
                    fontSize: Constants.twenty,
                    fontWeight: FontWeight.normal,
                    color: Color(
                      hexToInt("0xFF${ColorsData.blackColor}"),
                    ),
                  )),
            ),
          ),
          InkWell(
            onTap: () {
              AppRouter.router.navigateTo(context, "/home/services");
            },
            child: ListTile(
              title: Text("${Constants.serviceText}",
                  style: TextStyle(
                    fontSize: Constants.twenty,
                    fontWeight: FontWeight.normal,
                    color: Color(
                      hexToInt("0xFF${ColorsData.blackColor}"),
                    ),
                  )),
            ),
          ),
          ListTile(
            title: Text("${Constants.faqText}",
                style: TextStyle(
                  fontSize: Constants.twenty,
                  fontWeight: FontWeight.bold,
                  color: Color(
                    hexToInt("0xFF${ColorsData.blueColor}"),
                  ),
                )),
          ),
          InkWell(
            onTap: () {
              AppRouter.router.navigateTo(context, "/home/contact-us");
            },
            child: ListTile(
              title: Text("${Constants.contactUsText}",
                  style: TextStyle(
                    fontSize: Constants.twenty,
                    fontWeight: FontWeight.normal,
                    color: Color(
                      hexToInt("0xFF${ColorsData.blackColor}"),
                    ),
                  )),
            ),
          ),
        ],
      ),
    ),
  );
}
