import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../contact_us/tablet_contact_us.dart';
import '../home/tablet_home.dart';
import '../router/app_router.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';
import 'desktop_services.dart';

class TabletService extends StatefulWidget {
  const TabletService({super.key});

  @override
  State<TabletService> createState() => _TabletServiceState();
}

class _TabletServiceState extends State<TabletService> {
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
              serviceTopView(context),
              const SizedBox(
                height: 20,
              ),
              tabletServicesOurServices(context),
              const SizedBox(
                height: 20,
              ),
              tabletWhyChooseUs(context),
              const SizedBox(
                height: 20,
              ),
              tabletGetInTouch(context),
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

Widget tabletWhyChooseUs(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
    child: Column(
      children: [
        Column(
          children: [
            Image.asset(
              "assets/images/why_choos_us_one.png",
              height: 300,
              width: 300,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 200,
                ),
                Image.asset(
                  "assets/images/why_choose_us_two.png",
                  height: 300,
                  width: 300,
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          width: 100,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("${Constants.whyChooseUs}",
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
            Text("${Constants.whyChooseUsDescription}",
                style: GoogleFonts.poppins(
                  fontSize: Constants.thirtyTwo,
                  fontWeight: FontWeight.w500,
                  color: Color(
                    hexToInt("0xFF${ColorsData.blackColor}"),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            tabletBuildWhyChooseUs(
                context,
                "assets/images/innovative_ss.png",
                "${Constants.innovativeSoftwareSolutionsTitle}",
                "${Constants.innovativeSoftwareSolutionsDescription}"),
            const SizedBox(
              height: 20,
            ),
            tabletBuildWhyChooseUs(
                context,
                "assets/images/affordable_pricing.png",
                "${Constants.affordablePricingTitle}",
                "${Constants.affordablePricingDescription}"),
            const SizedBox(
              height: 20,
            ),
            tabletBuildWhyChooseUs(
                context,
                "assets/images/customized_software_develop.png",
                "${Constants.customizedSoftwareDevelopmentTitle}",
                "${Constants.customizedSoftwareDevelopmentDescription}"),
            const SizedBox(
              height: 20,
            ),
            tabletBuildWhyChooseUs(
                context,
                "assets/images/dedicated_support.png",
                "${Constants.dedicatedSupportTitle}",
                "${Constants.dedicatedSupportDescription}"),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ],
    ),
  );
}

tabletBuildWhyChooseUs(
    BuildContext context, String image, String title, String description) {
  return Row(
    children: [
      Image.asset(
        "$image",
        height: 40,
        width: 40,
      ),
      const SizedBox(
        width: 20,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$title",
              style: GoogleFonts.poppins(
                fontSize: Constants.twenty,
                fontWeight: FontWeight.w500,
                color: Color(
                  hexToInt("0xFF${ColorsData.blueColor}"),
                ),
              )),
          Text("$description",
              style: GoogleFonts.poppins(
                fontSize: Constants.sixteen,
                fontWeight: FontWeight.normal,
                color: Color(
                  hexToInt("0xFF${ColorsData.black212121}"),
                ),
              ))
        ],
      )
    ],
  );
}

Widget tabletServicesOurServices(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text("${Constants.ourServices}",
            style: GoogleFonts.poppins(
              fontSize: Constants.thirtyTwo,
              fontWeight: FontWeight.bold,
              color: Color(
                hexToInt("0xFF${ColorsData.blackColor}"),
              ),
            )),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/website_develop.png",
                height: 200,
                width: 200,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.asset(
                "assets/images/mobile_app_develop.png",
                height: 200,
                width: 200,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.asset(
                "assets/images/website to mobile.png",
                height: 200,
                width: 200,
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/uiux design.png",
                height: 200,
                width: 200,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.asset(
                "assets/images/logo design.png",
                height: 200,
                width: 200,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text("${Constants.wantToKnowMore}",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
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
                      AppRouter.router.navigateTo(context, "/home/contact-us");
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
                          "${Constants.contactUsText}",
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
        ),
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
              Text("${Constants.serviceText}",
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
              InkWell(
                onTap: () {
                  AppRouter.router.navigateTo(context, "/home/faq");
                },
                child: Text("${Constants.faqText}",
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
