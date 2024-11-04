import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/tablet_home.dart';
import '../router/app_router.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';
import 'desktop_pricing.dart';

class TabletPricing extends StatefulWidget {
  const TabletPricing({super.key});

  @override
  State<TabletPricing> createState() => _TabletPricingState();
}

class _TabletPricingState extends State<TabletPricing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          tabletNavBar(context),
          Expanded(
              child: ListView(
            children: [
              // tabletOurBestPricing(context),
              const SizedBox(
                height: 20,
              ),
              tabletFaq(context),
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
                        AppRouter.router
                            .navigateTo(context, "/home/contact-us");
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
              tabletBottomView(context),
            ],
          )),
        ],
      ),
    );
  }
}

Widget tabletFaq(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      children: [
        Text("${Constants.fAQ}",
            style: GoogleFonts.poppins(
              fontSize: Constants.thirtyTwo,
              fontWeight: FontWeight.bold,
              color: Color(
                hexToInt("0xFF${ColorsData.black212121}"),
              ),
            )),
        const SizedBox(
          height: 20,
        ),
        tabletBuildFaq(context, "${Constants.faqTitleOne}",
            "${Constants.faqDescriptionOne}"),
        const SizedBox(
          height: 40,
        ),
        tabletBuildFaq(context, "${Constants.faqTitleTwo}",
            "${Constants.faqDescriptionTwo}"),
        const SizedBox(
          height: 40,
        ),
        tabletBuildFaq(context, "${Constants.faqTitleThree}",
            "${Constants.faqDescriptionThree}"),
        const SizedBox(
          height: 40,
        ),
        tabletBuildFaq(context, "${Constants.faqTitleFour}",
            "${Constants.faqDescriptionFour}"),
        const SizedBox(
          height: 40,
        ),
        tabletBuildFaq(context, "${Constants.faqTitleFive}",
            "${Constants.faqDescriptionFive}"),
        const SizedBox(
          height: 40,
        ),
        tabletBuildFaq(context, "${Constants.faqTitleSix}",
            "${Constants.faqDescriptionSix}"),
      ],
    ),
  );
}

Widget tabletBuildFaq(BuildContext context, String question, String answer) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("$question",
          style: GoogleFonts.poppins(
            fontSize: Constants.twenty,
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
          style: GoogleFonts.poppins(
            fontSize: Constants.sixteen,
            fontWeight: FontWeight.normal,
            color: Color(
              hexToInt("0xFF${ColorsData.blackTwo}"),
            ),
          )),
    ],
  );
}

Widget tabletOurBestPricing(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      children: [
        Text("${Constants.ourBestPricingPackage}",
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
        Row(
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
              width: 20,
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
        Row(
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
              width: 20,
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

Widget tabletNavBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipOval(
              child: Image.asset(
                "assets/images/joyfy_tech_logo.png",
                height: 40,
                width: 40,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text("${Constants.projectTitle}",
                style: GoogleFonts.poppins(
                  fontSize: Constants.sixteen,
                  fontWeight: FontWeight.bold,
                  color: Color(
                    hexToInt("0xFF${ColorsData.blueColor}"),
                  ),
                ))
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  AppRouter.router.navigateTo(context, "");
                },
                child: Text("${Constants.homeText}",
                    style: TextStyle(
                      fontSize: Constants.sixteen,
                      fontWeight: FontWeight.normal,
                      color: Color(
                        hexToInt("0xFF${ColorsData.blackColor}"),
                      ),
                    )),
              ),
              SizedBox(
                width: Constants.twenty,
              ),
              InkWell(
                onTap: () {
                  AppRouter.router.navigateTo(context, "/home/our-projects");
                },
                child: Text("${Constants.oruProjectsText}",
                    style: TextStyle(
                      fontSize: Constants.sixteen,
                      fontWeight: FontWeight.normal,
                      color: Color(
                        hexToInt("0xFF${ColorsData.blackColor}"),
                      ),
                    )),
              ),
              SizedBox(
                width: Constants.twenty,
              ),
              InkWell(
                onTap: () {
                  AppRouter.router.navigateTo(context, "/home/company");
                },
                child: Text("${Constants.companyText}",
                    style: TextStyle(
                      fontSize: Constants.sixteen,
                      fontWeight: FontWeight.normal,
                      color: Color(
                        hexToInt("0xFF${ColorsData.blackColor}"),
                      ),
                    )),
              ),
              SizedBox(
                width: Constants.twenty,
              ),
              InkWell(
                onTap: () {
                  AppRouter.router.navigateTo(context, "/home/services");
                },
                child: Text("${Constants.serviceText}",
                    style: TextStyle(
                      fontSize: Constants.sixteen,
                      fontWeight: FontWeight.normal,
                      color: Color(
                        hexToInt("0xFF${ColorsData.blackColor}"),
                      ),
                    )),
              ),
              SizedBox(
                width: Constants.twenty,
              ),
              Text("${Constants.faqText}",
                  style: TextStyle(
                    fontSize: Constants.sixteen,
                    fontWeight: FontWeight.bold,
                    color: Color(
                      hexToInt("0xFF${ColorsData.blueColor}"),
                    ),
                  )),
              SizedBox(
                width: Constants.twenty,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color(hexToInt("0xFF${ColorsData.blueColor}"))),
                onPressed: () {
                  AppRouter.router.navigateTo(context, "/home/contact-us");
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Constants.twenty, vertical: Constants.eight),
                  child: Text("${Constants.contactUsText}",
                      style: TextStyle(
                        fontSize: Constants.sixteen,
                        fontWeight: FontWeight.normal,
                        color: Color(
                          hexToInt("0xFF${ColorsData.whiteColor}"),
                        ),
                      )),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
