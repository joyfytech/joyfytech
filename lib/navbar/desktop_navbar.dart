import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:joyfytech_website/home/home.dart';
import 'package:joyfytech_website/utils/constants.dart';

import '../router/app_router.dart';
import '../utils/colors.dart';

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        desktopNavBar(context),
        Expanded(
          child: ListView(
            children: const [HomePage()],
          ),
        )
      ],
    );
  }
}

Widget desktopNavBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              "assets/images/joyfy_tech_logo.png",
              height: 60,
              width: 60,
              fit: BoxFit.fill,
            ),
            SizedBox(
              width: 10,
            ),
            Text("${Constants.projectTitle}",
                textAlign: TextAlign.center,
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
              Text("${Constants.homeText}",
                  style: TextStyle(
                    fontSize: Constants.twenty,
                    fontWeight: FontWeight.bold,
                    color: Color(
                      hexToInt("0xFF${ColorsData.blueColor}"),
                    ),
                  )),
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
                onTap: () {
                  AppRouter.router.navigateTo(context, "/home/faq");
                },
                // child: Text("${Constants.faqText}",
                child: Text("${Constants.faqText}",
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
              // InkWell(
              //   onTap: () {
              //     AppRouter.router.navigateTo(context, "/home/jtadmin5623");
              //   },
              //   // child: Text("${Constants.faqText}",
              //   child: Text("${Constants.adminText}",
              //       style: TextStyle(
              //         fontSize: Constants.twenty,
              //         fontWeight: FontWeight.normal,
              //         color: Color(
              //           hexToInt("0xFF${ColorsData.blackColor}"),
              //         ),
              //       )),
              // ),
              // SizedBox(
              //   width: Constants.navSizedBox,
              // ),
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
