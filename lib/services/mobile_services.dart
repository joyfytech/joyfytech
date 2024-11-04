import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../contact_us/mobile_contact_us.dart';
import '../home/mobile_home.dart';
import '../router/app_router.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';

class MobileService extends StatefulWidget {
  const MobileService({super.key});

  @override
  State<MobileService> createState() => _MobileServiceState();
}

class _MobileServiceState extends State<MobileService> {
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
          const SizedBox(
            height: 20,
          ),
          mobileServiceTopView(context),
          const SizedBox(
            height: 20,
          ),
          mobileServicesOurServices(context),
          const SizedBox(
            height: 20,
          ),
          mobileWhyChooseUs(context),
          const SizedBox(
            height: 20,
          ),
          mobileGetInTouch(context),
          const SizedBox(
            height: 20,
          ),
          mobileBottomView(context),
        ],
      )),
    ));
  }
}

Widget mobileServiceTopView(BuildContext context) {
  return Image.asset(
    "assets/images/services_top_image.png",
    height: 150,
    fit: BoxFit.fill,
  );
}

mobileWhyChooseUs(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
    child: Column(
      children: [
        Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/why_choos_us_one.png",
                height: 150,
                width: 150,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 150,
                  ),
                  Image.asset(
                    "assets/images/why_choose_us_two.png",
                    height: 150,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
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
                  fontSize: Constants.twenty,
                  fontWeight: FontWeight.w500,
                  color: Color(
                    hexToInt("0xFF${ColorsData.black212121}"),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            mobileBuildWhyChooseUs(
                context,
                "assets/images/innovative_ss.png",
                "${Constants.innovativeSoftwareSolutionsTitle}",
                "${Constants.mobileInnovativeSoftwareSolutionsDescription}"),
            const SizedBox(
              height: 20,
            ),
            mobileBuildWhyChooseUs(
                context,
                "assets/images/affordable_pricing.png",
                "${Constants.affordablePricingTitle}",
                "${Constants.mobileAffordablePricingDescription}"),
            const SizedBox(
              height: 20,
            ),
            mobileBuildWhyChooseUs(
                context,
                "assets/images/customized_software_develop.png",
                "${Constants.customizedSoftwareDevelopmentTitle}",
                "${Constants.mobileCustomizedSoftwareDevelopmentDescription}"),
            const SizedBox(
              height: 20,
            ),
            mobileBuildWhyChooseUs(
                context,
                "assets/images/dedicated_support.png",
                "${Constants.dedicatedSupportTitle}",
                "${Constants.mobileDedicatedSupportDescription}"),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ],
    ),
  );
}

mobileBuildWhyChooseUs(
    BuildContext context, String image, String title, String description) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.asset(
        "$image",
        height: 40,
        width: 40,
      ),
      const SizedBox(
        height: 20,
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
              textAlign: TextAlign.justify,
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

mobileServicesOurServices(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      children: [
        Text("${Constants.ourServices}",
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
        Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/website_develop.png",
              height: 250,
              width: MediaQuery.of(context).size.width,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/images/mobile_app_develop.png",
              height: 250,
              width: MediaQuery.of(context).size.width,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/images/website to mobile.png",
              height: 250,
              width: MediaQuery.of(context).size.width,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/uiux design.png",
              height: 250,
              width: MediaQuery.of(context).size.width,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/images/logo design.png",
              height: 250,
              width: MediaQuery.of(context).size.width,
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text("${Constants.wantToKnowMore}",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
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
          ListTile(
            title: Text("${Constants.serviceText}",
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
              AppRouter.router.navigateTo(context, "/home/faq");
            },
            child: ListTile(
              title: Text("${Constants.faqText}",
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
