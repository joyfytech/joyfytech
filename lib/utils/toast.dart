import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessSnackbar {
  static void showCustomSnackbar(
    BuildContext context,
    String title,
    int fontSize,
    int height,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.transparent,
        content: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            height: height.toDouble(),
            decoration: BoxDecoration(
              color: const Color(0xff19cc37),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: fontSize.toDouble(),
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
          ),
        ),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        elevation: 0,
      ),
    );
  }
}

class FailureSnackbar {
  static void showCustomSnackbar(
    BuildContext context,
    String title,
    int fontSize,
    int height,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.transparent,
        content: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            height: height.toDouble(),
            decoration: BoxDecoration(
              color: const Color(0xffcc1919),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 8,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: fontSize.toDouble(),
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
          ),
        ),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        elevation: 0,
      ),
    );
  }
}

class NormalSnackbar {
  static void showCustomSnackbar(
    BuildContext context,
    String title,
    int fontSize,
    int height, {
    IconData successIcon = Icons.check_circle,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.transparent,
        content: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            height: height.toDouble(),
            decoration: BoxDecoration(
              color: const Color(0xff197dcc),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: fontSize.toDouble(),
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
          ),
        ),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        elevation: 0,
      ),
    );
  }
}

void showGetInTouchSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Text("Your enquiry has been successfully submitted. Thank you!",
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.none,
                color: Colors.black)),
        content: Text(
          "Our Joyfy Tech team will call you shortly and get back to you within 24 hours.",
          style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
              color: Colors.black),
        ),
        actions: [
          Center(
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 40,
                width: 78,
                decoration: BoxDecoration(
                  color: const Color(0xff001895),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "OK",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      );
    },
  );
}
