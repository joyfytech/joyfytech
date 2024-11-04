import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../router/app_router.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';

class DesktopGetOurProjects extends StatefulWidget {
  const DesktopGetOurProjects({super.key});

  @override
  State<DesktopGetOurProjects> createState() => _DesktopGetOurProjectsState();
}

class _DesktopGetOurProjectsState extends State<DesktopGetOurProjects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          desktopNavBar(context),
          buildSizedBoxHeight(30),
          buildAnimatedBoldText(context, Constants.projectWeHaveDone),
          buildSizedBoxHeight(30),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: readGetOurProjectsData(context),
          ))
        ],
      ),
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
                child: Text("${Constants.oruProjectsText}",
                    style: TextStyle(
                      fontSize: Constants.twenty,
                      fontWeight: FontWeight.bold,
                      color: Color(
                        hexToInt("0xFF${ColorsData.blueColor}"),
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

buildSizedBoxHeight(double height) {
  return SizedBox(
    height: height,
  );
}

buildAnimatedBoldText(BuildContext context, String title) {
  return Center(
    child: DefaultTextStyle(
      style: GoogleFonts.poppins(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color(
          hexToInt("0xFF${ColorsData.blueColor}"),
        ),
      ),
      child: AnimatedTextKit(animatedTexts: [
        TypewriterAnimatedText(title),
      ]),
    ),
  );
}

Widget readGetOurProjectsData(BuildContext context) {
  return StreamBuilder<QuerySnapshot>(
    stream: FirebaseFirestore.instance.collection('ourProjects').snapshots(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return Center(child: CircularProgressIndicator());
      }

      if (snapshot.hasError) {
        return Center(child: Text('Error: ${snapshot.error}'));
      }

      // Check if data exists
      if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
        return Center(child: Text('No projects found.'));
      }

      // Fetching the project data
      final projects = snapshot.data!.docs;

      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 1.4, // Adjust the aspect ratio as needed
        ),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          final project = projects[index];
          return ProjectCard(
            title: project['title'],
            imageUrl: project['image'],
            description: project['description'],
            link: project['link'],
          );
        },
      );
    },
  );
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;
  final String link;

  const ProjectCard({
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchWebsite(context, link);
      },
      child: Card(
        color: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Project Image
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 150,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                // Project Title
                Center(
                  child: Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 4),
                // Project Description
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 40,
                    child: Text(
                      description,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                //
                // Divider(
                //   color: Colors.grey,
                // ),
                // // Project Link (optional)
                // GestureDetector(
                //   onTap: () {
                //     launchWebsite(context, link);
                //     // Handle link tap, e.g., open browser
                //   },
                //   child: Center(
                //     child: Text(link,
                //         style: GoogleFonts.poppins(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 20,
                //           color: Color(
                //             hexToInt("0xFF${ColorsData.blueColor}"),
                //           ),
                //         )),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void launchWebsite(BuildContext context, String link) async {
  String facebookUrl = link;
  if (await canLaunch(facebookUrl)) {
    await launch(facebookUrl);
  } else {
    throw 'Could not launch $facebookUrl';
  }
}

buildEducationTextFun(BuildContext context, String txtTitle, double fontSize,
    FontWeight fontWeight, Color color) {
  return Text(
    txtTitle,
    textAlign: TextAlign.justify,
    style: GoogleFonts.lato(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}
