import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/mobile_home.dart';
import '../router/app_router.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';

class MobileCompany extends StatefulWidget {
  const MobileCompany({super.key});

  @override
  State<MobileCompany> createState() => _MobileCompanyState();
}

class _MobileCompanyState extends State<MobileCompany> {
  int _selectedIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
          mobileCompanyTopView(context),
          const SizedBox(
            height: 20,
          ),
          mobileCraftSuccess(context, _onTabTapped),
          const SizedBox(
            height: 20,
          ),
          mobileMissionVision(context),
          const SizedBox(
            height: 20,
          ),
          mobileOurValues(context),
          const SizedBox(
            height: 20,
          ),
          mobileOurProcess(context),
          const SizedBox(
            height: 20,
          ),
          mobileBottomView(context),
        ],
      )),
    ));
  }
}

Widget mobileCompanyTopView(BuildContext context) {
  return Image.asset(
    "assets/images/company_top_image.png",
    height: 200,
    fit: BoxFit.fill,
  );
}

mobileOurProcess(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      children: [
        Text("${Constants.ourProcess}",
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            mobileBuildOurValues(
                context,
                "assets/images/our_process_bg_image.png",
                "01",
                "Discover",
                "The initial phase of a project where research and exploration are conducted to gain insights into the problem space, identify user needs, and define project objectives."),
            const SizedBox(
              height: 10,
            ),
            mobileBuildOurValues(
                context,
                "assets/images/our_process_bg_image.png",
                "02",
                "Ideate",
                "The creative phase of the design process where brainstorming sessions and idea generation techniques are employed to explore a wide range of potential solutions to address the identified problems or meet user needs."),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            mobileBuildOurValues(
                context,
                "assets/images/our_process_bg_image.png",
                "03",
                "Design",
                "The process of transforming ideas and concepts into tangible artifacts or plans, often involving creating wireframes, prototypes, and mock-ups to visualize and refine the user experienceand interface design."),
            const SizedBox(
              width: 30,
            ),
            mobileBuildOurValues(
                context,
                "assets/images/our_process_bg_image.png",
                "04",
                "Development",
                " The stage in the project lifecycle where the actual implementation of the design takes place,involving coding, programming, and integratingvarious components to build the final product orsolution."),
            const SizedBox(
              width: 30,
            ),
            mobileBuildOurValues(
                context,
                "assets/images/our_process_bg_image.png",
                "05",
                "Testing",
                "The phase where the developed product or solution is rigorously evaluated against predefined criteria and user feedback to ensure functionality, usability, and quality, often involving various testing methods such as unit testing,integration testing, and user acceptance testing."),
          ],
        ),
      ],
    ),
  );
}

Widget mobileBuildOurValues(BuildContext context, String image, String numbers,
    String title, String description) {
  return Column(
    children: [
      Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "$image",
            height: 50,
            width: 50,
          ),
          Positioned(
            top: 10, // Adjust position as needed
            left: 13,
            child: Text("$numbers",
                style: GoogleFonts.poppins(
                  fontSize: Constants.twenty,
                  fontWeight: FontWeight.w500,
                  color: Color(
                    hexToInt("0xFF${ColorsData.whiteF8F8F8}"),
                  ),
                )),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Text("$title",
          style: GoogleFonts.poppins(
            fontSize: Constants.twentyFour,
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

mobileOurValues(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      children: [
        Text("${Constants.ourValues}",
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

mobileMissionVision(BuildContext context) {
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
              Image.asset(
                "assets/images/mission_vision.jpg",
                height: 150,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
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
                  fontSize: Constants.twentyFour,
                  fontWeight: FontWeight.bold,
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
                        fontSize: Constants.twenty,
                        fontWeight: FontWeight.bold,
                        color: Color(
                          hexToInt("0xFF${ColorsData.blueColor}"),
                        ),
                      )),
                  TextSpan(
                      text: '${Constants.mobileOurMissionDescription}',
                      style: TextStyle(
                        height: 1.5,
                        fontSize: Constants.sixteen,
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
                        fontSize: Constants.twenty,
                        fontWeight: FontWeight.bold,
                        color: Color(
                          hexToInt("0xFF${ColorsData.blueColor}"),
                        ),
                      )),
                  TextSpan(
                      text: '${Constants.mobileOurVisionDescription}',
                      style: TextStyle(
                        height: 1.5,
                        fontSize: Constants.sixteen,
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

Widget mobileCraftSuccess(
    BuildContext context, void Function(int index) onTabTapped) {
  int _selectedIndex = 0;

  final List<String> _tabs = [
    'Professional Team member',
    'Dedicated Tech Services',
    'Passion for Excellence',
  ];

  final List<String> _tabContents = [
    'With a passion for innovation, they tackle every challenge with precision and creativity. Committed to exceeding client expectations, our team ensures the highest quality in every project we undertake. Trust our skilled professionals to bring your vision to life.',
    'Our dedicated tech services ensure seamless integration and maintenance of your software solutions. From initial development to ongoing support,count on us for reliable, efficient services tailored to your needs.',
    'We strive for excellence in everything we do. From the quality of our code to the level of customer service, we are dedicated to delivering exceptional results. Partner with us to achieve your goals with excellence.',
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
                      height: 150,
                      width: 150,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "assets/images/company_image_two.png",
                      height: 150,
                      width: 150,
                      fit: BoxFit.fill,
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
                      height: 150,
                      width: 150,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "assets/images/company_image_four.png",
                      height: 150,
                      width: 150,
                      fit: BoxFit.fill,
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
                    height: 10,
                  ),
                  Text(
                    "${Constants.mobileCraftingSuccessThroughInnovationDescription}",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(
                      fontSize: Constants.sixteen,
                      fontWeight: FontWeight.normal,
                      color: Color(
                        hexToInt("0xFF${ColorsData.blackTwo}"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DefaultTabController(
                    length: _tabs.length,
                    child: Column(
                      children: [
                        TabBar(
                          tabs: _tabs.map((String title) {
                            return Tab(
                              child: Text(
                                title,
                                style: const TextStyle(
                                  fontSize: 10,
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
                        SizedBox(
                          height: 50, // Adjust the height as needed
                          child: TabBarView(
                            children: _tabContents.map((String content) {
                              return Text(
                                content,
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Color(
                                    hexToInt("0xFF${ColorsData.blue5981DD}"),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
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
          ListTile(
            title: Text("${Constants.companyText}",
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
