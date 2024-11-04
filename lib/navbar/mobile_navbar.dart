import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/home.dart';
import '../router/app_router.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';

class MobileNavbar extends StatefulWidget {
  const MobileNavbar({super.key});

  @override
  State<MobileNavbar> createState() => _MobileNavbarState();
}

class _MobileNavbarState extends State<MobileNavbar> {
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
              fit: BoxFit.fill,
            ),
          ),
        ),
        title: Text("${Constants.projectTitle}",
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
              fontSize: Constants.twenty,
              fontWeight: FontWeight.bold,
              color: Color(
                hexToInt("0xFF${ColorsData.blueColor}"),
              ),
            )),
      ),
      endDrawer: drawer(context),
      body: const SingleChildScrollView(child: HomePage()),
    ));
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
          ListTile(
            title: Text("${Constants.homeText}",
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
