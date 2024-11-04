import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/desktop_home.dart';
import '../router/app_router.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';

class DesktopCompany extends StatefulWidget {
  const DesktopCompany({super.key});

  @override
  State<DesktopCompany> createState() => _DesktopCompanyState();
}

class _DesktopCompanyState extends State<DesktopCompany> {
  int _selectedIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
              companyTopView(context),
              const SizedBox(
                height: 50,
              ),
              craftSuccess(context, _onTabTapped),
              const SizedBox(
                height: 50,
              ),
              missionVision(context),
              const SizedBox(
                height: 50,
              ),
              ourValues(context),
              const SizedBox(
                height: 40,
              ),
              ourProcess(context),
              const SizedBox(
                height: 40,
              ),
              bottomView(context),
            ],
          ))
        ],
      ),
    );
  }
}

Widget ourProcess(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 10),
    child: Column(
      children: [
        Text("${Constants.ourProcess}",
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildOurValues(
                context,
                "assets/images/our_process_bg_image.png",
                "01",
                "Discover",
                "The initial phase of a project where research and\nexploration are conducted to gain insights into\nthe problem space, identify user needs,\nand define project objectives."),
            const SizedBox(
              width: 30,
            ),
            buildOurValues(
                context,
                "assets/images/our_process_bg_image.png",
                "02",
                "Ideate",
                "The creative phase of the design process where\nbrainstorming sessions and idea generation \ntechniques are employed to explore a wide range\nof potential solutions to address the identified\nproblems or meet user needs."),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildOurValues(
                context,
                "assets/images/our_process_bg_image.png",
                "03",
                "Design",
                "The process of transforming ideas and concepts\ninto tangible artifacts or plans, often involving\ncreating wireframes, prototypes, and mock-ups\nto visualize and refine the user experience\nand interface design."),
            const SizedBox(
              width: 30,
            ),
            buildOurValues(
                context,
                "assets/images/our_process_bg_image.png",
                "04",
                "Development",
                " The stage in the project lifecycle where the\nactual implementation of the design takes place,\ninvolving coding, programming, and integrating\nvarious components to build the final product or\nsolution."),
            const SizedBox(
              width: 30,
            ),
            buildOurValues(
                context,
                "assets/images/our_process_bg_image.png",
                "05",
                "Testing",
                "The phase where the developed product or\nsolution is rigorously evaluated against \npredefined criteria and user feedback to ensure\nfunctionality, usability, and quality, often involving\nvarious testing methods such as unit testing,\nintegration testing, and user acceptance testing."),
          ],
        ),
      ],
    ),
  );
}

Widget buildOurValues(BuildContext context, String image, String numbers,
    String title, String description) {
  return Column(
    children: [
      Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "$image",
            height: 100,
            width: 100,
          ),
          Positioned(
            top: 20, // Adjust position as needed
            left: 25,
            child: Text("$numbers",
                style: GoogleFonts.poppins(
                  fontSize: Constants.fourty,
                  fontWeight: FontWeight.w500,
                  color: Color(
                    hexToInt("0xFF${ColorsData.whiteF8F8F8}"),
                  ),
                )),
          ),
        ],
      ),
      const SizedBox(
        height: 30,
      ),
      Text("$title",
          style: GoogleFonts.poppins(
            fontSize: Constants.thirtyTwo,
            fontWeight: FontWeight.normal,
            color: Color(
              hexToInt("0xFF${ColorsData.blueColor}"),
            ),
          )),
      const SizedBox(
        height: 10,
      ),
      Text("$description",
          textAlign: TextAlign.justify,
          style: GoogleFonts.poppins(
            fontSize: Constants.sixteen,
            fontWeight: FontWeight.normal,
            color: Color(
              hexToInt("0xFF${ColorsData.blueColor}"),
            ),
          )),
    ],
  );
}

Widget ourValues(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 10),
    child: Column(
      children: [
        Text("${Constants.ourValues}",
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/our_values_one.png",
              height: 400,
              width: 400,
            ),
            Image.asset(
              "assets/images/our_values_two.png",
              height: 400,
              width: 400,
            ),
            Image.asset(
              "assets/images/our_values_three.png",
              height: 400,
              width: 400,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget missionVision(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 145, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 3.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/images/mission_vision.jpg",
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text("${Constants.missionAndVision}",
                style: GoogleFonts.poppins(
                  fontSize: Constants.fourty,
                  fontWeight: FontWeight.w500,
                  color: Color(
                    hexToInt("0xFF${ColorsData.black212121}"),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: '${Constants.ourMissionTitle}',
                      style: TextStyle(
                        fontSize: Constants.twentyEight,
                        fontWeight: FontWeight.bold,
                        color: Color(
                          hexToInt("0xFF${ColorsData.blueColor}"),
                        ),
                      )),
                  TextSpan(
                      text: '${Constants.ourMissionDescription}',
                      style: TextStyle(
                        height: 1.5,
                        fontSize: Constants.twenty,
                        color: Color(
                          hexToInt("0xFF${ColorsData.blackTwo}"),
                        ),
                      ))
                ],
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: '${Constants.ourVisionTitle}',
                      style: TextStyle(
                        fontSize: Constants.twentyEight,
                        fontWeight: FontWeight.bold,
                        color: Color(
                          hexToInt("0xFF${ColorsData.blueColor}"),
                        ),
                      )),
                  TextSpan(
                      text: '${Constants.ourVisionDescription}',
                      style: TextStyle(
                        height: 1.5,
                        fontSize: Constants.twenty,
                        color: Color(
                          hexToInt("0xFF${ColorsData.blackTwo}"),
                        ),
                      ))
                ],
              ),
              textAlign: TextAlign.justify,
            )
          ],
        )
      ],
    ),
  );
}

Widget craftSuccess(BuildContext context, Function(int) onTabTapped) {
  int _selectedIndex = 0;

  final List<String> _tabs = [
    'Professional Team member',
    'Dedicated Tech Services',
    'Passion for Excellence',
  ];

  final List<String> _tabContents = [
    'With a passion for innovation, they tackle every challenge with precision and creativity.\nCommitted to exceeding client expectations, our team ensures the highest quality in every project we undertake.\nTrust our skilled professionals to bring your vision to life.',
    'Our dedicated tech services ensure seamless integration and maintenance of your\nsoftware solutions. From initial development to ongoing support,\ncount on us for reliable, efficient services tailored to your needs.',
    'We strive for excellence in everything we do. From the quality of our code to the\nlevel of customer service, we are dedicated to delivering\nexceptional results. Partner with us to achieve your goals with excellence.',
  ];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Image.asset(
                      "assets/images/company_image_one.png",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "assets/images/company_image_two.png",
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/company_image_three.png",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "assets/images/company_image_four.png",
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Add the tab interface below
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "${Constants.craftingSuccessThroughInnovationTitle}",
                      style: GoogleFonts.poppins(
                        fontSize: Constants.twentyFour,
                        fontWeight: FontWeight.bold,
                        color: Color(
                          hexToInt("0xFF${ColorsData.black212121}"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "${Constants.craftingSuccessThroughInnovationDescription}",
                      style: GoogleFonts.poppins(
                        fontSize: Constants.sixteen,
                        fontWeight: FontWeight.normal,
                        color: Color(
                          hexToInt("0xFF${ColorsData.blackTwo}"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: DefaultTabController(
                        length: _tabs.length,
                        child: Column(
                          children: [
                            TabBar(
                              tabs: _tabs.map((String title) {
                                return Tab(
                                  child: Text(
                                    title,
                                    style: TextStyle(
                                      fontSize: Constants.sixteen,
                                      fontWeight: FontWeight.bold,
                                      // Set the text to bold
                                    ),
                                  ),
                                );
                              }).toList(),
                              labelColor: Color(
                                hexToInt("0xFF${ColorsData.blueColor}"),
                              ),
                              unselectedLabelColor: Color(
                                hexToInt("0xFF${ColorsData.greyCACACA}"),
                              ),
                              indicatorColor: Color(
                                hexToInt("0xFF${ColorsData.blueColor}"),
                              ),
                              onTap: onTabTapped,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 200, // Adjust the height as needed
                              child: TabBarView(
                                children: _tabContents.map((String content) {
                                  return Center(
                                    child: Text(
                                      content,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize: Constants.sixteen,
                                        fontWeight: FontWeight.normal,
                                        color: Color(
                                          hexToInt(
                                              "0xFF${ColorsData.blue5981DD}"),
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ],
  );
}

Widget companyTopView(BuildContext context) {
  return Image.asset(
    "assets/images/company_top_image.png",
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
              Text("${Constants.companyText}",
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
