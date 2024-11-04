import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../router/app_router.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';

class DesktopHome extends StatelessWidget {
  const DesktopHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          topView(context),
          const SizedBox(
            height: 10,
          ),
          getToKnowUs(context),
          const SizedBox(
            height: 40,
          ),
          ourServices(context),
          const SizedBox(
            height: 40,
          ),
          bottomView(context),
        ],
      ),
    );
  }
}

Widget bottomView(BuildContext context) {
  return Container(
      height: 500,
      color: Color(
        hexToInt("0xFF${ColorsData.blueColor}"),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 40),
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
                    quickLinks(context),
                    socialLinks(context),
                  ],
                ),
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
    crossAxisAlignment: CrossAxisAlignment.start,
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
        mainAxisAlignment: MainAxisAlignment.start,
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

          // const SizedBox(
          //   width: 10,
          // ),
          // Container(
          //   height: 50,
          //   width: 50,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(40), color: Colors.white),
          //   child: const Icon(
          //     FontAwesomeIcons.linkedinIn,
          //     size: 30,
          //     color: Colors.blueAccent,
          //   ),
          // ),
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
        mainAxisAlignment: MainAxisAlignment.start,
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
        mainAxisAlignment: MainAxisAlignment.start,
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
        mainAxisAlignment: MainAxisAlignment.start,
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

Widget ourServices(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 100),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 3.0,
          child: Column(
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
        ),
        Expanded(
            child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
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
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
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
                  Center(
                    child: Column(
                      children: [
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
            ),
          ],
        ))
      ],
    ),
  );
}

Widget buildOurService(
    BuildContext context, String numbers, String logo, String title) {
  return Container(
    width: 250,
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

Widget getToKnowUs(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 200),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: SizedBox(
            height: 500,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "assets/images/get_to_know_bg.png",
                  height: 450,
                  width: 300,
                ),
                Positioned(
                    top: 20, // Adjust position as needed
                    left: 20,
                    child: Image.asset(
                      "assets/images/get_to_know_one.png",
                      height: 400,
                      width: 200,
                    )),
                Positioned(
                    top: 60, // Adjust position as needed
                    left: 220,
                    child: Image.asset(
                      "assets/images/get_to_know_two.png",
                      height: 400,
                      width: 200,
                    ))
              ],
            ),
          ),
        ),
        Expanded(
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
        ))
      ],
    ),
  );
}

Widget buildGetToKnowPoints(BuildContext context, String points) {
  return Row(
    children: [
      const Text(
        "\u2022",
        style: TextStyle(
          fontWeight: FontWeight.w100,
          fontFamily: 'Montserrat',
          fontSize: 40,
          color: Colors.black,
        ),
      ),
      const SizedBox(width: 8),
      Text(points,
          style: GoogleFonts.poppins(
            fontSize: Constants.sixteen,
            fontWeight: FontWeight.bold,
            color: Color(
              hexToInt("0xFF${ColorsData.blackTwo}"),
            ),
          ))
    ],
  );
}

Widget topView(BuildContext context) {
  return SizedBox(
    height: 800, //
    width: MediaQuery.of(context).size.width,
    child: Stack(
      //  fit: StackFit.expand,
      children: [
        Image.asset(
          "assets/images/home_top_image.png",
        ),
        Positioned(
          top: 120, // Adjust position as needed
          left: 100, // Adjust position as needed
          child: Text(
            "${Constants.modernDigitalText}",
            style: TextStyle(
              fontSize: Constants.fourty,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          top: 260, // Adjust position as needed
          left: 100, // Adjust position as needed
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
          top: 360, // Adjust position as needed
          left: 100,
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
        Positioned(
          top: 420, // Adjust position as needed
          left: 120,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildHomeCard(
                      context,
                      "assets/images/innovation.jpg",
                      "${Constants.innovativeTechnologyTitle}",
                      "${Constants.innovativeTechnologyDescription}"),
                  SizedBox(
                    width: Constants.fourty,
                  ),
                  buildHomeCard(
                      context,
                      "assets/images/cost.jpg",
                      "${Constants.costEffectivenessTitle}",
                      "${Constants.costEffectivenessDescription}"),
                  SizedBox(
                    width: Constants.fourty,
                  ),
                  buildHomeCard(
                      context,
                      "assets/images/technical_expert.jpg",
                      "${Constants.industryExpertiseTitle}",
                      "${Constants.industryExpertiseDescription}"),
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget buildHomeCard(
    BuildContext context, String image, String title, String description) {
  return Card(
    elevation: 10,
    child: Container(
      width: 340,
      height: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Constants.twenty),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "$image",
              height: 50,
              width: 50,
            ),
            SizedBox(
              height: Constants.sixteen,
            ),
            Text(
              "$title",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(
                    hexToInt("0xFF${ColorsData.blackColor}"),
                  ),
                  fontSize: Constants.twenty),
            ),
            SizedBox(
              height: Constants.sixteen,
            ),
            Text(
              "$description",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Color(
                    hexToInt("0xFF${ColorsData.greyColor}"),
                  ),
                  fontSize: Constants.sixteen),
            )
          ],
        ),
      ),
    ),
  );
}
