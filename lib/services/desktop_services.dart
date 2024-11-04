import 'package:awesome_icons/awesome_icons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/desktop_home.dart';
import '../router/app_router.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';
import '../utils/toast.dart';

class DesktopService extends StatefulWidget {
  const DesktopService({super.key});

  @override
  State<DesktopService> createState() => _DesktopServiceState();
}

class _DesktopServiceState extends State<DesktopService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          desktopNavBar(context),
          Expanded(
              child: ListView(
            children: [
              serviceTopView(context),
              servicesOurServices(context),
              const SizedBox(
                height: 40,
              ),
              whyChooseUs(context),
              const SizedBox(
                height: 40,
              ),
              getInTouch(context),
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

Widget serviceTopView(BuildContext context) {
  return Image.asset(
    "assets/images/services_top_image.png",
    fit: BoxFit.fill,
  );
}

Widget servicesOurServices(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 10),
    child: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text("${Constants.ourServices}",
            style: GoogleFonts.poppins(
              fontSize: Constants.thirtyTwo,
              fontWeight: FontWeight.bold,
              color: Color(
                hexToInt("0xFF${ColorsData.blackColor}"),
              ),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/website_develop.png",
              height: 300,
              width: 300,
            ),
            const SizedBox(
              width: 20,
            ),
            Image.asset(
              "assets/images/mobile_app_develop.png",
              height: 300,
              width: 300,
            ),
            const SizedBox(
              width: 20,
            ),
            Image.asset(
              "assets/images/website to mobile.png",
              height: 300,
              width: 300,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/uiux design.png",
              height: 300,
              width: 300,
            ),
            const SizedBox(
              width: 20,
            ),
            Image.asset(
              "assets/images/logo design.png",
              height: 300,
              width: 300,
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Text("${Constants.wantToKnowMore}",
                    style: GoogleFonts.poppins(
                      fontSize: 28.5,
                      fontWeight: FontWeight.w400,
                      color: Color(
                        hexToInt("0xFF${ColorsData.greyColor}"),
                      ),
                    )),
                const SizedBox(
                  height: 24,
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

Widget whyChooseUs(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 0),
    child: Row(
      children: [
        Column(
          children: [
            Image.asset(
              "assets/images/why_choos_us_one.png",
              height: 300,
              width: 300,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 200,
                ),
                Image.asset(
                  "assets/images/why_choose_us_two.png",
                  height: 300,
                  width: 300,
                ),
              ],
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 100,
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
                      fontSize: Constants.thirtyTwo,
                      fontWeight: FontWeight.w500,
                      color: Color(
                        hexToInt("0xFF${ColorsData.blackColor}"),
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                buildWhyChooseUs(
                    context,
                    "assets/images/innovative_ss.png",
                    "${Constants.innovativeSoftwareSolutionsTitle}",
                    "${Constants.innovativeSoftwareSolutionsDescription}"),
                const SizedBox(
                  height: 20,
                ),
                buildWhyChooseUs(
                    context,
                    "assets/images/affordable_pricing.png",
                    "${Constants.affordablePricingTitle}",
                    "${Constants.affordablePricingDescription}"),
                const SizedBox(
                  height: 20,
                ),
                buildWhyChooseUs(
                    context,
                    "assets/images/customized_software_develop.png",
                    "${Constants.customizedSoftwareDevelopmentTitle}",
                    "${Constants.customizedSoftwareDevelopmentDescription}"),
                const SizedBox(
                  height: 20,
                ),
                buildWhyChooseUs(
                    context,
                    "assets/images/dedicated_support.png",
                    "${Constants.dedicatedSupportTitle}",
                    "${Constants.dedicatedSupportDescription}"),
                const SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ],
    ),
  );
}

buildWhyChooseUs(
    BuildContext context, String image, String title, String description) {
  return Row(
    children: [
      const SizedBox(
        height: 20,
      ),
      Image.asset(
        "$image",
        height: 60,
        width: 60,
      ),
      const SizedBox(
        width: 20,
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

Widget getInTouch(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${Constants.doYouHaveAnyQueries}",
                  style: GoogleFonts.poppins(
                    fontSize: Constants.fourty,
                    fontWeight: FontWeight.bold,
                    color: Color(
                      hexToInt("0xFF${ColorsData.blackColor}"),
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              Row(
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

Widget getInTouchForm(BuildContext context) {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  final CollectionReference<Object?> customersCollection =
      FirebaseFirestore.instance.collection('customers');

  bool sendingMessage = false;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Column(
        children: [
          const SizedBox(height: 20),
          buildTextField("Name", nameController),
          const SizedBox(height: 10),

          buildTextField("Phone", phoneController, isNumeric: true),
          const SizedBox(height: 10),

          buildTextField("Email", emailController),
          const SizedBox(height: 10),

          buildTextField("Address", addressController),
          const SizedBox(height: 10),

          buildTextField("What you need from Us ? ", messageController,
              maxLines: 4),
          const SizedBox(height: 20),
          // Send Message Button
        ],
      ),
      InkWell(
        onTap: () => submitMessage(
            context,
            nameController,
            phoneController,
            emailController,
            addressController,
            messageController,
            customersCollection,
            sendingMessage),
        child: buildSubmitButton(),
      )
    ],
  );
}

submitMessage(
    BuildContext context,
    TextEditingController nameController,
    TextEditingController phoneController,
    TextEditingController emailController,
    TextEditingController addressController,
    TextEditingController messageController,
    CollectionReference<Object?> customersCollection,
    bool sendingMessage) async {
  sendingMessage = true;

  String documentID = DateTime.now().millisecondsSinceEpoch.toString();

  // Validate form fields
  if (nameController.text.isEmpty ||
      phoneController.text.isEmpty ||
      emailController.text.isEmpty ||
      addressController.text.isEmpty ||
      messageController.text.isEmpty) {
    FailureSnackbar.showCustomSnackbar(
        context, "Please fill in all fields.", 20, 80);
    return;
  }

  if (nameController.text.length < 3) {
    FailureSnackbar.showCustomSnackbar(
        context, "Name must be at least 3 characters long.", 18, 80);
    return;
  }

  // Validate phone number format
  if (!_isValidPhoneNumber(phoneController.text)) {
    FailureSnackbar.showCustomSnackbar(
        context, "Please enter a valid phone number.", 18, 80);
    return;
  }
  QuerySnapshot<Object?> phoneSnapshot = await customersCollection
      .where('phone', isEqualTo: phoneController.text)
      .limit(1)
      .get();

  if (phoneSnapshot.docs.isNotEmpty) {
    FailureSnackbar.showCustomSnackbar(
        context, "This phone number is already registered.", 18, 80);
    return;
  }

  // Validate email format
  if (!_isValidEmail(emailController.text)) {
    FailureSnackbar.showCustomSnackbar(
        context, "Please enter a valid email address.", 18, 80);
    return;
  }

  QuerySnapshot<Object?> emailSnapshot = await customersCollection
      .where('email', isEqualTo: emailController.text)
      .limit(1)
      .get();

  if (emailSnapshot.docs.isNotEmpty) {
    FailureSnackbar.showCustomSnackbar(
        context, "This email is already registered.", 18, 80);
    return;
  }
  // Save data to Firestore
  try {
    await customersCollection.doc(documentID).set({
      'id': documentID.toString(),
      'name': nameController.text,
      'phone': phoneController.text,
      'email': emailController.text,
      'message': messageController.text,
      'timestamp': FieldValue.serverTimestamp(),
      // Add other fields as needed
    });

    // Clear the text fields after successful submission
    nameController.clear();
    emailController.clear();
    phoneController.clear();
    messageController.clear();
    addressController.clear();

    showGetInTouchSuccessDialog(context);
  } catch (error) {
    // Handle the error here
    print("Error: $error");
  }
}

bool _isValidEmail(String email) {
  return RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$')
      .hasMatch(email);
}

bool _isValidPhoneNumber(String phoneNumber) {
  return RegExp(r'^\d{10}$').hasMatch(phoneNumber);
}

Widget buildSubmitButton() {
  return Container(
    height: 60,
    decoration: BoxDecoration(
      color: const Color(0xff001895),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Center(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Text(
          "${Constants.submit}",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    ),
  );
}

Widget buildTextField(String hintText, TextEditingController controller,
    {int? maxLines, bool isNumeric = false}) {
  return Card(
    elevation: 10,
    color: Colors.white,
    child: Container(
      height: maxLines != null ? 100 : 50,
      width: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xfff5f5f5), // Set the border color here
          width: 0, // Set the border width here
        ),
      ),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        inputFormatters:
            isNumeric ? [FilteringTextInputFormatter.digitsOnly] : null,
        keyboardType: isNumeric ? TextInputType.number : null,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(10),
        ),
      ),
    ),
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
                child: Text("${Constants.serviceText}",
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
