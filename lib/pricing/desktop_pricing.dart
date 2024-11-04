import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/desktop_home.dart';
import '../router/app_router.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';

class DesktopPricing extends StatefulWidget {
  const DesktopPricing({super.key});

  @override
  State<DesktopPricing> createState() => _DesktopPricingState();
}

class _DesktopPricingState extends State<DesktopPricing> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          desktopNavBar(context),
          Expanded(
              child: ListView(
            children: [
              //ourBestPricing(context),
              const SizedBox(
                height: 50,
              ),
              faq(context),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: InkWell(
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
              ),
              const SizedBox(
                height: 50,
              ),
              bottomView(context),
            ],
          ))
        ],
      ),
    );
  }
}

Widget faq(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
    child: Column(
      children: [
        Text("${Constants.fAQ}",
            style: GoogleFonts.poppins(
              fontSize: Constants.fourty,
              fontWeight: FontWeight.bold,
              color: Color(
                hexToInt("0xFF${ColorsData.black212121}"),
              ),
            )),
        const SizedBox(
          height: 20,
        ),
        buildFaq(context, "${Constants.faqTitleOne}",
            "${Constants.faqDescriptionOne}"),
        const SizedBox(
          height: 40,
        ),
        buildFaq(context, "${Constants.faqTitleTwo}",
            "${Constants.faqDescriptionTwo}"),
        const SizedBox(
          height: 40,
        ),
        buildFaq(context, "${Constants.faqTitleThree}",
            "${Constants.faqDescriptionThree}"),
        const SizedBox(
          height: 40,
        ),
        buildFaq(context, "${Constants.faqTitleFour}",
            "${Constants.faqDescriptionFour}"),
        const SizedBox(
          height: 40,
        ),
        buildFaq(context, "${Constants.faqTitleFive}",
            "${Constants.faqDescriptionFive}"),
        const SizedBox(
          height: 40,
        ),
        buildFaq(context, "${Constants.faqTitleSix}",
            "${Constants.faqDescriptionSix}"),
      ],
    ),
  );
}

Widget buildFaq(BuildContext context, String question, String answer) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("$question",
          style: GoogleFonts.poppins(
            fontSize: Constants.twentyFour,
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
            fontSize: Constants.twenty,
            fontWeight: FontWeight.normal,
            color: Color(
              hexToInt("0xFF${ColorsData.blackTwo}"),
            ),
          )),
    ],
  );
}

Widget ourBestPricing(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
    child: Column(
      children: [
        Text("${Constants.ourBestPricingPackage}",
            style: GoogleFonts.poppins(
              fontSize: Constants.fourty,
              fontWeight: FontWeight.bold,
              color: Color(
                hexToInt("0xFF${ColorsData.black212121}"),
              ),
            )),
        const SizedBox(
          height: 24,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
          ),
        )
      ],
    ),
  );
}

Widget buildOurBestPricing(
    BuildContext context,
    String software,
    String pricing,
    String pointOne,
    String pointTwo,
    String pointThree,
    String pointFour,
    String pointFive) {
  return Container(
    height: 500,
    width: 330,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Color(
        hexToInt("0xFF${ColorsData.blueColor}"),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
            children: [
              Text("$software",
                  style: GoogleFonts.poppins(
                    fontSize: Constants.twentyFour,
                    fontWeight: FontWeight.w500,
                    color: Color(
                      hexToInt("0xFF${ColorsData.whiteF8F8F8}"),
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              Text("$pricing",
                  style: GoogleFonts.poppins(
                    fontSize: Constants.twentyEight,
                    fontWeight: FontWeight.bold,
                    color: Color(
                      hexToInt("0xFF${ColorsData.greyCACACA}"),
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    "\u2022",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text("$pointOne",
                      style: GoogleFonts.poppins(
                        fontSize: Constants.sixteen,
                        fontWeight: FontWeight.normal,
                        color: Color(
                          hexToInt("0xFF${ColorsData.whiteColor}"),
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Text(
                    "\u2022",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text("$pointTwo",
                      style: GoogleFonts.poppins(
                        fontSize: Constants.sixteen,
                        fontWeight: FontWeight.normal,
                        color: Color(
                          hexToInt("0xFF${ColorsData.whiteColor}"),
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "\u2022",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text("$pointThree",
                      style: GoogleFonts.poppins(
                        fontSize: Constants.sixteen,
                        fontWeight: FontWeight.normal,
                        color: Color(
                          hexToInt("0xFF${ColorsData.whiteColor}"),
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Text(
                    "\u2022",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text("$pointFour",
                      style: GoogleFonts.poppins(
                        fontSize: Constants.sixteen,
                        fontWeight: FontWeight.normal,
                        color: Color(
                          hexToInt("0xFF${ColorsData.whiteColor}"),
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Text(
                    "\u2022",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text("$pointFive",
                      style: GoogleFonts.poppins(
                        fontSize: Constants.sixteen,
                        fontWeight: FontWeight.normal,
                        color: Color(
                          hexToInt("0xFF${ColorsData.whiteColor}"),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          )),
          InkWell(
            onTap: () {
              AppRouter.router.navigateTo(context, "/home/contact-us");
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Constants.twele),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Constants.sixteen,
                    horizontal: Constants.thirtyTwo),
                child: Text(
                  "${Constants.contactUsText}",
                  style: TextStyle(
                    fontSize: Constants.twenty,
                    color: Color(
                      hexToInt("0xFF${ColorsData.blueColor}"),
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
  );
}

Widget desktopNavBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipOval(
              child: Image.asset(
                "assets/images/joyfy_tech_logo.png",
                height: 60,
                width: 60,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text("${Constants.projectTitle}",
                style: GoogleFonts.poppins(
                  fontSize: Constants.twenty,
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
                      fontSize: Constants.twenty,
                      fontWeight: FontWeight.normal,
                      color: Color(
                        hexToInt("0xFF${ColorsData.blackColor}"),
                      ),
                    )),
              ),
              SizedBox(
                width: Constants.navSizedBox,
              ),
              InkWell(
                onTap: () {
                  AppRouter.router.navigateTo(context, "/home/our-projects");
                },
                child: Text("${Constants.oruProjectsText}",
                    style: TextStyle(
                      fontSize: Constants.twenty,
                      fontWeight: FontWeight.normal,
                      color: Color(
                        hexToInt("0xFF${ColorsData.blackColor}"),
                      ),
                    )),
              ),
              SizedBox(
                width: Constants.navSizedBox,
              ),
              InkWell(
                onTap: () {
                  AppRouter.router.navigateTo(context, "/home/company");
                },
                child: Text("${Constants.companyText}",
                    style: TextStyle(
                      fontSize: Constants.twenty,
                      fontWeight: FontWeight.normal,
                      color: Color(
                        hexToInt("0xFF${ColorsData.blackColor}"),
                      ),
                    )),
              ),
              SizedBox(
                width: Constants.navSizedBox,
              ),
              InkWell(
                onTap: () {
                  AppRouter.router.navigateTo(context, "/home/services");
                },
                child: Text("${Constants.serviceText}",
                    style: TextStyle(
                      fontSize: Constants.twenty,
                      fontWeight: FontWeight.normal,
                      color: Color(
                        hexToInt("0xFF${ColorsData.blackColor}"),
                      ),
                    )),
              ),
              SizedBox(
                width: Constants.navSizedBox,
              ),
              InkWell(
                child: Text("${Constants.faqText}",
                    style: TextStyle(
                      fontSize: Constants.twenty,
                      fontWeight: FontWeight.bold,
                      color: Color(
                        hexToInt("0xFF${ColorsData.blueColor}"),
                      ),
                    )),
              ),
              SizedBox(
                width: Constants.navSizedBox,
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
                        fontSize: Constants.twenty,
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
