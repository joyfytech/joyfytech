import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../router/app_router.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';
import 'desktop_get_our_projects.dart';

class MobileGetOurProjects extends StatefulWidget {
  const MobileGetOurProjects({super.key});

  @override
  State<MobileGetOurProjects> createState() => _MobileGetOurProjectsState();
}

class _MobileGetOurProjectsState extends State<MobileGetOurProjects> {
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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              buildSizedBoxHeight(30),
              buildAnimatedBoldText(context, Constants.projectWeHaveDone),
              buildSizedBoxHeight(30),
              Expanded(child: readGetOurProjectsData(context))
            ],
          ),
        ),
      ),
    );
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
            // onTap: () {
            //   AppRouter.router.navigateTo(context, "/home/our-projects");
            // },
            child: ListTile(
              title: Text("${Constants.oruProjectsText}",
                  style: TextStyle(
                    fontSize: Constants.twenty,
                    fontWeight: FontWeight.bold,
                    color: Color(
                      hexToInt("0xFF${ColorsData.blueColor}"),
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

      return ListView.builder(
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
