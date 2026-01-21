import 'package:agri_tech/utils/utils.dart';
import 'package:agri_tech/views/create_account.dart';
import 'package:agri_tech/views/forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {

  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 420,
              child: Stack(
                children: [
                  // Background Image
                  Image.asset(
                    "assets/loginbg.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                  // White Card
                  Positioned(
                    top: 290,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 45, right: 30, left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Forgot Password",
                              style: GoogleFonts.raleway(
                                fontWeight: FontWeight.w700,
                                fontSize: 23,
                                color: const Color(0xff292929),
                              ),
                            ),
                            const SizedBox(height: 7),
                            Text(
                              "Enter your registered  email below\nwe’ll send you a  reset link",
                              style: GoogleFonts.raleway(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: const Color(0xffB4B4B4),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Email
                  buildTextField(
                      "Email",
                      controller: emailController),
                  SizedBox(height: 222,),
                  AppButton(txt: "Get Link", width: double.infinity, height: 60, onPress: (){})

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(
      String label, {
        required TextEditingController controller,
        bool isPassword = false,
      }) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      style: GoogleFonts.raleway(
        fontSize: 13.33,
        color: const Color(0xff292929),
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: GoogleFonts.raleway(
          fontSize: 13.33,
          fontWeight: FontWeight.w400,
          color: const Color(0xffB4B4B4),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xff339D44)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xffD4D4D4)),
        ),
      ),
    );
  }


}
