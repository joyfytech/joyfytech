import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:joyfytech_website/home/tablet_home.dart';

import '../router/app_router.dart';
import '../services/desktop_services.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';

class TabletContactUs extends StatefulWidget {
  const TabletContactUs({super.key});

  @override
  State<TabletContactUs> createState() => _TabletContactUsState();
}

class _TabletContactUsState extends State<TabletContactUs> {
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
              const SizedBox(
                height: 20,
              ),
              tabletGetInTouch(context),
              const SizedBox(
                height: 50,
              ),
              tabletBottomView(context),
            ],
          )),
        ],
      ),
    );
  }
}

Widget tabletGetInTouch(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 0),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text("${Constants.doYouHaveAnyQueries}",
                    style: GoogleFonts.poppins(
                      fontSize: Constants.thirtyTwo,
                      fontWeight: FontWeight.bold,
                      color: Color(
                        hexToInt("0xFF${ColorsData.blackColor}"),
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
                    size: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text("${Constants.call}",
                      style: GoogleFonts.poppins(
                        fontSize: Constants.thirtyTwo,
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
              Text("${Constants.firstMobileNumber}",
                  style: GoogleFonts.poppins(
                    fontSize: Constants.twentyFour,
                    fontWeight: FontWeight.w500,
                    color: Color(
                      hexToInt("0xFF${ColorsData.blackTwo}"),
                    ),
                  )),
              Text("${Constants.secondMobileNumber}",
                  style: GoogleFonts.poppins(
                    fontSize: Constants.twentyFour,
                    fontWeight: FontWeight.w500,
                    color: Color(
                      hexToInt("0xFF${ColorsData.blackTwo}"),
                    ),
                  )),
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
                    size: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text("${Constants.email}",
                      style: GoogleFonts.poppins(
                        fontSize: Constants.thirtyTwo,
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
              Text("${Constants.companyMail}",
                  style: GoogleFonts.poppins(
                    fontSize: Constants.twentyFour,
                    fontWeight: FontWeight.w500,
                    color: Color(
                      hexToInt("0xFF${ColorsData.blackTwo}"),
                    ),
                  )),
            ],
          ),
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
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("${Constants.getInTouch}",
                    style: GoogleFonts.poppins(
                      fontSize: Constants.thirtyTwo,
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
