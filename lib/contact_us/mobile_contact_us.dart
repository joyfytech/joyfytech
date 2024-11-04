import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../home/mobile_home.dart';
import '../router/app_router.dart';
import '../services/desktop_services.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';

class MobileContactUs extends StatefulWidget {
  const MobileContactUs({super.key});

  @override
  State<MobileContactUs> createState() => _MobileContactUsState();
}

class _MobileContactUsState extends State<MobileContactUs> {
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

mobileGetInTouch(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
    child: Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text("${Constants.doYouHaveAnyQueries}",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: Constants.twentyFour,
                    fontWeight: FontWeight.bold,
                    color: Color(
                      hexToInt("0xFF${ColorsData.black212121}"),
                    ),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.phoneAlt,
                  color: Color(
                    hexToInt("0xFF${ColorsData.blackTwo}"),
                  ),
                  size: 20,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text("${Constants.call}",
                    style: GoogleFonts.poppins(
                      fontSize: Constants.twenty,
                      fontWeight: FontWeight.w500,
                      color: Color(
                        hexToInt("0xFF${ColorsData.blackTwo}"),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => _launchPhone("${Constants.firstMobileNumber}"),
              child: Text("${Constants.firstMobileNumber}",
                  style: GoogleFonts.poppins(
                    fontSize: Constants.twenty,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                    color: Color(
                      hexToInt("0xFF${ColorsData.blackTwo}"),
                    ),
                  )),
            ),
            InkWell(
              onTap: () => _launchPhone("${Constants.secondMobileNumber}"),
              child: Text("${Constants.secondMobileNumber}",
                  style: GoogleFonts.poppins(
                    fontSize: Constants.twenty,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                    color: Color(
                      hexToInt("0xFF${ColorsData.blackTwo}"),
                    ),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.email_outlined,
                  color: Color(
                    hexToInt("0xFF${ColorsData.blackTwo}"),
                  ),
                  size: 20,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text("${Constants.email}",
                    style: GoogleFonts.poppins(
                      fontSize: Constants.twenty,
                      fontWeight: FontWeight.w500,
                      color: Color(
                        hexToInt("0xFF${ColorsData.blackTwo}"),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => _sendEmail("${Constants.companyMail}"),
              child: Text("${Constants.companyMail}",
                  style: GoogleFonts.poppins(
                    decoration: TextDecoration.underline,
                    fontSize: Constants.twenty,
                    fontWeight: FontWeight.w500,
                    color: Color(
                      hexToInt("0xFF${ColorsData.blackTwo}"),
                    ),
                  )),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 600,
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Color(
              hexToInt("0xFF${ColorsData.whiteF8F8F8}"),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("${Constants.getInTouch}",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: Constants.twentyFour,
                      fontWeight: FontWeight.bold,
                      color: Color(
                        hexToInt("0xFF${ColorsData.blueColor}"),
                      ),
                    )),
                getInTouchForm(context),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

_sendEmail(String emailAddress) async {
  final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: emailAddress,
  );

  String url = _emailLaunchUri.toString();
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchPhone(String phoneNumber) async {
  final url = 'tel:$phoneNumber';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
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
          ListTile(
            title: Text("${Constants.contactUsText}",
                style: TextStyle(
                  fontSize: Constants.twenty,
                  fontWeight: FontWeight.bold,
                  color: Color(
                    hexToInt("0xFF${ColorsData.blueColor}"),
                  ),
                )),
          ),
        ],
      ),
    ),
  );
}
