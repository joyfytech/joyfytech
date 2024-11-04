import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../router/app_router.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';
import 'desktop_home.dart';

class TabletHome extends StatefulWidget {
  const TabletHome({super.key});

  @override
  State<TabletHome> createState() => _TabletHomeState();
}

class _TabletHomeState extends State<TabletHome> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          tabletTopView(context),
          const SizedBox(
            height: 20,
          ),
          buildHomeCards(context),
          const SizedBox(
            height: 20,
          ),
          tabletGetToKnowUs(context),
          const SizedBox(
            height: 20,
          ),
          tabletOurServices(context),
          const SizedBox(
            height: 20,
          ),
          tabletBottomView(context),
        ],
      ),
    );
  }
}

Widget tabletBottomView(BuildContext context) {
  return Container(
      // height: 500,
      color: Color(
        hexToInt("0xFF${ColorsData.blueColor}"),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
            child: Column(
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    contacts(context),
                    bottomOurServices(context),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    quickLinks(context),
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
          Text("${Constants.copyright}",
              style: GoogleFonts.poppins(
                fontSize: Constants.sixteen,
                fontWeight: FontWeight.normal,
                color: Color(
                  hexToInt("0xFF${ColorsData.greyCACACA}"),
                ),
              ))
        ],
      ));
}

Widget bottomOurServices(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("${Constants.ourServices}",
          style: GoogleFonts.poppins(
            fontSize: Constants.twenty,
            fontWeight: FontWeight.w500,
            color: Color(
              hexToInt("0xFF${ColorsData.whiteColor}"),
            ),
          )),
      const SizedBox(
        height: 20,
      ),
      buildBottomOurServices(context, Constants.logoDesigning),
      buildBottomOurServices(context, Constants.mobileApplicationDevelopment),
      buildBottomOurServices(context, Constants.websiteDevelopment),
      buildBottomOurServices(context, Constants.uiuxDesigning),
      buildBottomOurServices(context, Constants.websiteToMobile),
    ],
  );
}

buildBottomOurServices(BuildContext context, String ourServiesTitle) {
  return Column(
    children: [
      Text("$ourServiesTitle",
          style: GoogleFonts.poppins(
            fontSize: Constants.sixteen,
            fontWeight: FontWeight.normal,
            color: Color(
              hexToInt("0xFF${ColorsData.greyCACACA}"),
            ),
          )),
      const SizedBox(
        height: 10,
      )
    ],
  );
}

Widget quickLinks(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("${Constants.quickLinks}",
          style: GoogleFonts.poppins(
            fontSize: Constants.twenty,
            fontWeight: FontWeight.w500,
            color: Color(
              hexToInt("0xFF${ColorsData.whiteColor}"),
            ),
          )),
      const SizedBox(
        height: 20,
      ),
      InkWell(
          onTap: () {
            AppRouter.router.navigateTo(context, "/home/company");
          },
          child: buildQuickLinks(context, Constants.company)),
      InkWell(
          onTap: () {
            AppRouter.router.navigateTo(context, "/home/services");
          },
          child: buildQuickLinks(context, Constants.services)),
      InkWell(
          onTap: () {
            AppRouter.router.navigateTo(context, "/home/faq");
          },
          child: buildQuickLinks(context, Constants.pricing))
    ],
  );
}

Widget buildQuickLinks(BuildContext context, String quickLinksTitle) {
  return Column(
    children: [
      Text("$quickLinksTitle",
          style: GoogleFonts.poppins(
            fontSize: Constants.sixteen,
            fontWeight: FontWeight.normal,
            color: Color(
              hexToInt("0xFF${ColorsData.greyCACACA}"),
            ),
          )),
      const SizedBox(
        height: 10,
      )
    ],
  );
}

Widget socialLinks(BuildContext context) {
  return Column(
    children: [
      Text("${Constants.socialLinks}",
          style: GoogleFonts.poppins(
            fontSize: Constants.twenty,
            fontWeight: FontWeight.w500,
            color: Color(
              hexToInt("0xFF${ColorsData.whiteColor}"),
            ),
          )),
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => _launchWhatsApp(),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              child: Icon(
                FontAwesomeIcons.whatsapp,
                color: Colors.green,
                size: 30,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: _launchInstagram,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), color: Colors.white),
              child: const Icon(
                FontAwesomeIcons.instagram,
                size: 30,
                color: Colors.pink,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: _launchFacebook,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), color: Colors.white),
              child: Icon(
                FontAwesomeIcons.facebook,
                size: 30,
                color: Color(
                  hexToInt("0xFF${ColorsData.blueColor}"),
                ),
              ),
            ),
          ),
        ],
      )
    ],
  );
}

void _launchFacebook() async {
  String facebookUrl = "https://www.facebook.com/profile.php?id=61554496594570";
  if (await canLaunch(facebookUrl)) {
    await launch(facebookUrl);
  } else {
    throw 'Could not launch $facebookUrl';
  }
}

void _launchInstagram() async {
  String instagramUrl = "https://www.instagram.com/joyfytech/";
  if (await canLaunch(instagramUrl)) {
    await launch(instagramUrl);
  } else {
    throw 'Could not launch $instagramUrl';
  }
}

void _launchWhatsApp() async {
  const phoneNumber = "+916383358105";
  const message =
      "Hello, Joyfy Tech! I'm keenly interested in your services."; // Message to send
  final whatsappUrl =
      "https://wa.me/$phoneNumber/?text=${Uri.encodeFull(message)}";
  if (await canLaunch(whatsappUrl)) {
    await launch(whatsappUrl);
  } else {
    throw 'Could not launch $whatsappUrl';
  }
}

Widget contacts(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0), color: Colors.white),
            child: const Icon(
              FontAwesomeIcons.phoneAlt,
              color: Colors.green,
              size: 20,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            children: [
              Text("${Constants.firstMobileNumber}",
                  style: GoogleFonts.poppins(
                    fontSize: Constants.sixteen,
                    fontWeight: FontWeight.normal,
                    color: Color(
                      hexToInt("0xFF${ColorsData.greyCACACA}"),
                    ),
                  )),
              Text("${Constants.secondMobileNumber}",
                  style: GoogleFonts.poppins(
                    fontSize: Constants.sixteen,
                    fontWeight: FontWeight.normal,
                    color: Color(
                      hexToInt("0xFF${ColorsData.greyCACACA}"),
                    ),
                  )),
            ],
          )
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0), color: Colors.white),
            child: const Icon(
              Icons.email_outlined,
              color: Colors.red,
              size: 20,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            children: [
              Text("${Constants.companyMail}",
                  style: GoogleFonts.poppins(
                    fontSize: Constants.sixteen,
                    fontWeight: FontWeight.normal,
                    color: Color(
                      hexToInt("0xFF${ColorsData.greyCACACA}"),
                    ),
                  )),
            ],
          )
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0), color: Colors.white),
            child: const Icon(
              Icons.location_on_outlined,
              color: Colors.red,
              size: 25,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            children: [
              Text("${Constants.companyAddress}",
                  style: GoogleFonts.poppins(
                    fontSize: Constants.sixteen,
                    fontWeight: FontWeight.normal,
                    color: Color(
                      hexToInt("0xFF${ColorsData.greyCACACA}"),
                    ),
                  )),
            ],
          )
        ],
      ),
    ],
  );
}

Widget tabletOurServices(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 32),
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
                  fontSize: Constants.twenty,
                  fontWeight: FontWeight.w500,
                  color: Color(
                    hexToInt("0xFF${ColorsData.blueColor}"),
                  ),
                )),
            const SizedBox(
              height: 8,
            ),
            Text("${Constants.ourServicesTitle}",
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Color(
                    hexToInt("0xFF${ColorsData.blackColor}"),
                  ),
                )),
            const SizedBox(
              height: 8,
            ),
            Text("${Constants.ourServiesDescription}",
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
              height: 12,
            ),
          ],
        ),
        Column(
          children: [
            SingleChildScrollView(
              // scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      buildOurService(
                          context,
                          "01",
                          "assets/images/our_services_logo.png",
                          "${Constants.logoDesigning}"),
                      buildOurService(
                          context,
                          "02",
                          "assets/images/our_services_mobile.png",
                          "${Constants.mobileApplicationDevelopment}"),
                      buildOurService(
                          context,
                          "03",
                          "assets/images/our_services_website.png",
                          "${Constants.websiteDevelopment}"),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        buildOurService(
                            context,
                            "04",
                            "assets/images/our_services_website_to_mobile.png",
                            "${Constants.websiteToMobile}"),
                        buildOurService(
                            context,
                            "05",
                            "assets/images/our_services_uiux.png",
                            "${Constants.uiuxDesigning}"),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 100,
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
                              height: 24,
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
                                        hexToInt(
                                            "0xFF${ColorsData.whiteColor}"),
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
            ),
          ],
        )
      ],
    ),
  );
}

Widget tabletGetToKnowUs(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50),
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
                  width: 200,
                )),
            Positioned(
                top: 30, // Adjust position as needed
                left: 200,
                child: Image.asset(
                  "assets/images/get_to_know_two.png",
                  height: 350,
                  width: 200,
                ))
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 75),
          child: Column(
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
                    fontSize: Constants.twentyFour,
                    fontWeight: FontWeight.w400,
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
                height: 20,
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
          ),
        )
      ],
    ),
  );
}

Widget buildHomeCards(BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildHomeCard(
              context,
              "assets/images/innovation.jpg",
              "${Constants.innovativeTechnologyTitle}",
              "${Constants.innovativeTechnologyDescription}"),
          const SizedBox(
            width: 10,
          ),
          buildHomeCard(
              context,
              "assets/images/cost.jpg",
              "${Constants.costEffectivenessTitle}",
              "${Constants.costEffectivenessDescription}"),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Center(
        child: buildHomeCard(
            context,
            "assets/images/technical_expert.jpg",
            "${Constants.industryExpertiseTitle}",
            "${Constants.industryExpertiseDescription}"),
      )
    ],
  );
}

Widget tabletTopView(BuildContext context) {
  return SizedBox(
    //height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child: Stack(
      children: [
        Image.asset(
          "assets/images/home_top_image.png",
        ),
        Positioned(
          top: 20, // Adjust position as needed
          left: 30, // Adjust position as needed
          child: Text(
            "${Constants.modernDigitalText}",
            style: TextStyle(
              fontSize: Constants.thirtyTwo,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          top: 120, // Adjust position as needed
          left: 30, // Adjust position as needed
          child: Text(
            "${Constants.modernDigitalDescriptionText}",
            style: TextStyle(
              fontSize: Constants.sixteen,
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Positioned(
          top: 200, // Adjust position as needed
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
        ),
      ],
    ),
  );
}
