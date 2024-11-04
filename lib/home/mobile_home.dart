import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../router/app_router.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';
import 'desktop_home.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          mobileTopView(context),
          const SizedBox(
            height: 10,
          ),
          mobileBuildHomeCards(context),
          const SizedBox(
            height: 10,
          ),
          mobileGetToKnowUs(context),
          const SizedBox(
            height: 10,
          ),
          mobileOurServices(context),
          const SizedBox(
            height: 10,
          ),
          mobileBottomView(context),
        ],
      ),
    );
  }
}

mobileBottomView(BuildContext context) {
  return Container(
      // height: 500,
      color: Color(
        hexToInt("0xFF${ColorsData.blueColor}"),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/joyfy_tech_logo.png",
                      height: 60,
                      width: 60,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text("${Constants.projectTitle}",
                        style: GoogleFonts.poppins(
                          fontSize: Constants.twentyFour,
                          fontWeight: FontWeight.bold,
                          color: Color(
                            hexToInt("0xFF${ColorsData.whiteColor}"),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    contacts(context),
                    SizedBox(
                      height: 20,
                    ),
                    bottomOurServices(context),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    quickLinks(context),
                    const SizedBox(
                      height: 20,
                    ),
                    socialLinks(context),
                  ],
                )
              ],
            ),
          ),
          Divider(
            color: Color(
              hexToInt("0xFF${ColorsData.whiteColor}"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text("${Constants.copyright}",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: Constants.sixteen,
                  fontWeight: FontWeight.normal,
                  color: Color(
                    hexToInt("0xFF${ColorsData.greyCACACA}"),
                  ),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ));
}

mobileOurServices(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Text("${Constants.ourServices}",
                style: GoogleFonts.poppins(
                  fontSize: Constants.twentyFour,
                  fontWeight: FontWeight.bold,
                  color: Color(
                    hexToInt("0xFF${ColorsData.blueColor}"),
                  ),
                )),
            const SizedBox(
              height: 8,
            ),
            Text("${Constants.ourServicesTitle}",
                style: GoogleFonts.poppins(
                  fontSize: Constants.twenty,
                  fontWeight: FontWeight.w500,
                  color: Color(
                    hexToInt("0xFF${ColorsData.blackColor}"),
                  ),
                )),
            const SizedBox(
              height: 8,
            ),
            Text("${Constants.ourServiesDescription}",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color(
                    hexToInt("0xFF${ColorsData.blackTwo}"),
                  ),
                )),
            const SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                AppRouter.router.navigateTo(context, "/home/services");
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Constants.twele),
                  color: Color(
                    hexToInt("0xFF${ColorsData.blueColor}"),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: Constants.sixteen,
                      horizontal: Constants.thirtyTwo),
                  child: Text(
                    "${Constants.explore}",
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
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        Column(
          children: [
            SingleChildScrollView(
              // scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Column(
                    children: [
                      mobileBuildOurService(
                          context,
                          "01",
                          "assets/images/our_services_logo.png",
                          "${Constants.logoDesigning}"),
                      const SizedBox(
                        height: 10,
                      ),
                      mobileBuildOurService(
                          context,
                          "02",
                          "assets/images/our_services_mobile.png",
                          "${Constants.mobileApplicationDevelopment}"),
                      const SizedBox(
                        height: 10,
                      ),
                      mobileBuildOurService(
                          context,
                          "03",
                          "assets/images/our_services_website.png",
                          "${Constants.websiteDevelopment}"),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      mobileBuildOurService(
                          context,
                          "04",
                          "assets/images/our_services_website_to_mobile.png",
                          "${Constants.websiteToMobile}"),
                      const SizedBox(
                        height: 10,
                      ),
                      mobileBuildOurService(
                          context,
                          "05",
                          "assets/images/our_services_uiux.png",
                          "${Constants.uiuxDesigning}"),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text("${Constants.wantToKnowMore}",
                              style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: Color(
                                  hexToInt("0xFF${ColorsData.greyColor}"),
                                ),
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              AppRouter.router
                                  .navigateTo(context, "/home/services");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Constants.twele),
                                color: Color(
                                  hexToInt("0xFF${ColorsData.blueColor}"),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: Constants.sixteen,
                                    horizontal: Constants.thirtyTwo),
                                child: Text(
                                  "${Constants.explore}",
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
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget mobileBuildOurService(
    BuildContext context, String numbers, String logo, String title) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 300,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      border: Border.all(color: const Color(0xffbebebe), width: 1.0),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        children: [
          Text("$numbers",
              style: GoogleFonts.poppins(
                fontSize: Constants.fifty,
                fontWeight: FontWeight.bold,
                color: Color(
                  hexToInt("0xFF${ColorsData.blueThree}"),
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            "$logo",
            height: 60,
            width: 60,
          ),
          const SizedBox(
            height: 20,
          ),
          Text("$title",
              style: GoogleFonts.poppins(
                fontSize: Constants.twenty,
                fontWeight: FontWeight.bold,
                color: Color(
                  hexToInt("0xFF${ColorsData.blueColor}"),
                ),
              )),
        ],
      ),
    ),
  );
}

mobileGetToKnowUs(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Image.asset(
              "assets/images/get_to_know_bg.png",
              height: 400,
              width: 500,
            ),
            Positioned(
                top: 20, // Adjust position as needed
                left: 0,
                child: Image.asset(
                  "assets/images/get_to_know_one.png",
                  height: 350,
                  width: 150,
                )),
            Positioned(
                top: 30, // Adjust position as needed
                left: 150,
                child: Image.asset(
                  "assets/images/get_to_know_two.png",
                  height: 350,
                  width: 150,
                ))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${Constants.getTowKnowUsText}",
                style: GoogleFonts.poppins(
                  fontSize: Constants.twentyFour,
                  fontWeight: FontWeight.bold,
                  color: Color(
                    hexToInt("0xFF${ColorsData.blueColor}"),
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            Text("${Constants.pioneeringText}",
                style: GoogleFonts.poppins(
                  fontSize: Constants.twenty,
                  fontWeight: FontWeight.w500,
                  color: Color(
                    hexToInt("0xFF${ColorsData.blackColor}"),
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            Text("${Constants.pioneeringDescription}",
                style: GoogleFonts.poppins(
                  fontSize: Constants.sixteen,
                  fontWeight: FontWeight.normal,
                  color: Color(
                    hexToInt("0xFF${ColorsData.blackTwo}"),
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            buildGetToKnowPoints(context, "Professional Team member"),
            buildGetToKnowPoints(context, "Dedicated Tech Services"),
            buildGetToKnowPoints(context, "Passion for Excellence"),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                AppRouter.router.navigateTo(context, "/home/company");
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Constants.twele),
                  color: Color(
                    hexToInt("0xFF${ColorsData.blueColor}"),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: Constants.sixteen,
                      horizontal: Constants.thirtyTwo),
                  child: Text(
                    "${Constants.readMore}",
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
        )
      ],
    ),
  );
}

mobileBuildHomeCards(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      buildHomeCard(
          context,
          "assets/images/innovation.jpg",
          "${Constants.innovativeTechnologyTitle}",
          "${Constants.innovativeTechnologyDescription}"),
      const SizedBox(
        height: 10,
      ),
      buildHomeCard(
          context,
          "assets/images/cost.jpg",
          "${Constants.costEffectivenessTitle}",
          "${Constants.costEffectivenessDescription}"),
      const SizedBox(
        height: 10,
      ),
      buildHomeCard(
          context,
          "assets/images/technical_expert.jpg",
          "${Constants.industryExpertiseTitle}",
          "${Constants.industryExpertiseDescription}")
    ],
  );
}

mobileTopView(BuildContext context) {
  return Stack(
    children: [
      Image.asset(
        "assets/images/home_top_image.png",
        fit: BoxFit.fitHeight,
        height: 260,
        width: MediaQuery.of(context).size.width,
      ),
      Positioned(
        top: 30, // Adjust position as needed
        left: 30, // Adjust position as needed
        child: Text(
          "${Constants.modernDigitalText}",
          style: TextStyle(
            fontSize: Constants.sixteen,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Positioned(
        top: 85, // Adjust position as needed
        left: 30, // Adjust position as needed
        child: Text(
          "${Constants.mobileModernDigitalDescriptionText}",
          style: TextStyle(
            fontSize: Constants.twele,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      Positioned(
        top: 170, // Adjust position as needed
        left: 30,
        // Adjust position as needed
        child: InkWell(
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
                  vertical: Constants.sixteen, horizontal: Constants.thirtyTwo),
              child: Text(
                "${Constants.contactUsText}",
                style: TextStyle(
                  fontSize: Constants.sixteen,
                  color: Color(
                    hexToInt("0xFF${ColorsData.blueColor}"),
                  ),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
