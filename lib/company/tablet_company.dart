import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/tablet_home.dart';
import '../router/app_router.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';
import 'desktop_company.dart';

class TabletCompany extends StatefulWidget {
  const TabletCompany({super.key});

  @override
  State<TabletCompany> createState() => _TabletCompanyState();
}

class _TabletCompanyState extends State<TabletCompany> {
  int _selectedIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
              companyTopView(context),
              const SizedBox(
                height: 20,
              ),
              tabletCraftSuccess(context, _onTabTapped),
              const SizedBox(
                height: 20,
              ),
              tabletMissionVision(context),
              const SizedBox(
                height: 20,
              ),
              tabletOurValues(context),
              const SizedBox(
                height: 20,
              ),
              tabletOurProcess(context),
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

Widget tabletOurProcess(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
        Column(
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
        Column(
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

Widget tabletOurValues(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/our_values_one.png",
              height: 300,
              width: 300,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/images/our_values_two.png",
              height: 300,
              width: 300,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/images/our_values_three.png",
              height: 300,
              width: 300,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget tabletMissionVision(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
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
                        fontSize: Constants.twentyFour,
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
                        fontSize: Constants.twentyFour,
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

Widget tabletCraftSuccess(
    BuildContext context, void Function(int index) onTabTapped) {
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
            Center(
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
                              hexToInt("0xFF${ColorsData.greyColor}"),
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
            )
          ],
        ),
      ),
    ],
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
              Text("${Constants.companyText}",
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
